<!-- gold-standard: shared/harness/sample.md -->
---
domain: gpgpu
requires:
  - to: chip-architecture
  - to: chip-isa-n6
  - to: compiler-os
---

<!-- @own(sections=[WHY, COMPARE, REQUIRES, STRUCT, FLOW, VERIFY, EVOLVE], strict=false, order=sequential, prefix="§") -->

# GPGPU Programming Model — vendor-agnostic SSOT

> **Topic**: GPGPU (General-Purpose computation on Graphics Processing Units)
> programming model. Software stack — kernel language + runtime + IR + memory
> model — that runs data-parallel programs on GPU silicon (or other SIMT/SIMD
> accelerator).
>
> **Scope**: programming model only. Silicon (SM/CU/EU layout, warp/wavefront
> hardware, register file sizing) is in chip-architecture / chip-isa-n6.
>
> **Last sync (web spec)**: 2026-05-08 — CUDA 13.2 (2026-03-04), HIP/ROCm
> 7.2.53211, SYCL 2020 rev 11 (2025-11-07), OpenCL 3.1.0 (2026-05-05),
> Metal 4 / MSL spec 2025-10-23, WebGPU W3C CR Draft (v2 in dev, 2026).

## §1 WHY (why a vendor-agnostic GPGPU model)

GPU silicon today divides cleanly into 6 ecosystems — NVIDIA (CUDA), AMD
(HIP), Intel/Khronos (SYCL), Khronos legacy (OpenCL), Apple (Metal), and
W3C (WebGPU). Each ecosystem ships its own host API, its own kernel
language, and its own intermediate representation. The hardware they target
is structurally similar: a hierarchical SIMT executor with a 4-tier memory
hierarchy and a barrier-based synchronisation model. **The programming
models diverge much more than the silicon does.**

Three forms of waste appear when developers adopt one model and lock in:

1. **Re-port tax** — a kernel written for CUDA must be re-written (not just
   re-compiled) to run on AMD, Intel, Apple, or the browser. HIP narrows
   the gap to NVIDIA but does not close it. SYCL narrows the gap to all
   Khronos-aligned hardware but not to NVIDIA's tensor cores or Apple's
   neural accelerators.
2. **Tooling fragmentation** — profiler, debugger, sanitizer, occupancy
   calculator, and code-coverage tooling are all per-ecosystem. A multi-
   target product carries 6× the tooling surface.
3. **Talent split** — a CUDA-trained engineer cannot move a kernel to
   Metal without an apprenticeship in MSL semantics, threadgroup memory,
   and the Apple command encoder model. The skill is not transferrable
   despite the underlying compute being structurally the same.

**The vendor-agnostic claim**: every shipped GPGPU model is a projection of
a smaller invariant kernel — host/device split, NDRange (grid), workgroup
(block), work-item (thread), 4-tier memory (private / local / global /
constant), and a barrier primitive. A model that names this kernel and
maps each vendor onto it lets a kernel be written once and projected onto
each ecosystem mechanically — the same way an n=6 ISA projects onto
multiple foundry process nodes.

| Effect | Status quo | Vendor-agnostic projection | Felt change |
|---|---|---|---|
| Port surface | per-ecosystem rewrite | source-once, project-N | 6× developer headcount equivalent |
| Tooling | 6 toolchains | 1 IR + 6 backends | profiler/debugger reusable |
| IR substrate | PTX (NV) ‖ GCN/AMDGCN (AMD) ‖ SPIR-V (Khronos) ‖ AIR (Apple) ‖ WGSL/Tint (Web) | SPIR-V as common lower-bound + per-vendor lowering | 1 IR audit, N codegen tests |
| Talent | per-ecosystem apprenticeship | model-shaped, not API-shaped | hiring pool union, not intersection |
| Spec churn | per-ecosystem release calendar | one rev table, six rev rows | 1 changelog to read |
| Library reuse | per-ecosystem (cuBLAS, rocBLAS, oneMKL, MPS, …) | one façade, N backends | BLAS/FFT/RNG written once |

**One-sentence summary**: every GPGPU programming model in production is a
projection of a single invariant kernel + memory hierarchy + barrier set;
naming the kernel separates *what the program means* from *which vendor
runs it*.

## §2 COMPARE (the 6-model contraction)

Eight programming models exist in production. To fit a 6-axis projection,
SPIR-V is treated as the cross-cutting IR substrate (not a programming
model on its own), and Vulkan-Compute is treated as a Vulkan profile of
the SPIR-V substrate (consumed by SYCL/OpenCL/WebGPU paths). The remaining
six are first-class:

| # | Model | Vendor | Latest spec | Date | Host language | Kernel language | IR | Memory model | Sync |
|---|-------|--------|-------------|------|---------------|------------------|----|---------------|------|
| 1 | **CUDA** | NVIDIA (proprietary) | 13.2 | 2026-03-04 | C/C++/Fortran/Python | CUDA C++ | PTX → SASS | PTX 6-tier (register / shared / global / constant / texture / surface) + thread-block-cluster (CC≥9.0) | `__syncthreads`, cluster sync, cooperative groups |
| 2 | **HIP/ROCm** | AMD (open) | HIP 7.2.53211, ROCm 7.2.3 | 2026 | C++ | HIP C++ (CUDA-compatible source) | LLVM IR → AMDGCN | HIP 4-tier (private / shared / global / constant) | `__syncthreads`, cooperative groups |
| 3 | **SYCL** | Khronos (open, single-source C++) | 2020 rev 11 | 2025-11-07 | ISO C++ 17/20 | SYCL C++ (single-source) | SPIR-V (default) ‖ PTX ‖ AMDGCN | SYCL 4-tier (private / local / global / constant) | `nd_item::barrier`, `group::barrier` |
| 4 | **OpenCL** | Khronos (open, runtime-driven) | 3.1.0 | 2026-05-05 | C/C++/Python via host API | OpenCL C / C++ for OpenCL | SPIR-V | OpenCL 4-tier (private / local / global / constant) | `barrier`, `work_group_barrier` |
| 5 | **Metal** | Apple (proprietary, MSL ⊂ C++) | Metal 4 / MSL 4 | 2025-10-23 | Objective-C / Swift / C++ | Metal Shading Language (C++14 dialect) | AIR | Metal 4-tier (thread / threadgroup / device / constant) + tensor-typed first-class (Metal 4) | `threadgroup_barrier`, simdgroup ops |
| 6 | **WebGPU** | W3C (open, browser) | CR Draft (v2 in dev) | 2026 | JS / WebAssembly | WGSL | WGSL → SPIR-V/MSL/HLSL via Tint/Naga | WGSL 4-tier (private / workgroup / storage / uniform) | `workgroupBarrier`, `storageBarrier` |

**Cross-cutting (not in the 6)**:

- **SPIR-V** — Khronos IR. Common lower target for SYCL, OpenCL, and (via
  Tint/Naga) WebGPU. Not a programming model.
- **PTX** — NVIDIA virtual ISA. Lower target for CUDA and (via clang)
  some SYCL paths.
- **Vulkan Compute** — a Vulkan profile that consumes SPIR-V compute
  shaders. Treated here as a deployment surface for the SPIR-V substrate.
- **Mojo / Triton / JAX-Pallas / OpenAI Triton-lang** — higher-level
  kernel DSLs that lower to one of the 6. Out of scope for this SSOT;
  belongs in `compiler-os` or a `kernel-dsl` topic.

### §2.1 Coverage matrix (which model runs where, 2026-05-08)

| Model | NVIDIA GPU | AMD GPU | Intel GPU | Apple GPU | mobile (Mali/Adreno) | browser | CPU fallback |
|-------|:----------:|:-------:|:---------:|:---------:|:--------------------:|:-------:|:------------:|
| CUDA  | ✓ | ✗ (HIP transpile only) | ✗ | ✗ | ✗ | ✗ | ✗ |
| HIP   | ✓ (via NVCC backend) | ✓ | ✗ | ✗ | ✗ | ✗ | ✗ |
| SYCL  | ✓ (DPC++/oneAPI) | ✓ (AdaptiveCpp/oneAPI) | ✓ | △ (third-party) | △ | ✗ | ✓ |
| OpenCL | ✓ | ✓ | ✓ | △ (deprecated by Apple) | ✓ | ✗ | ✓ |
| Metal | ✗ | ✗ | ✗ | ✓ | ✗ | ✗ | ✗ |
| WebGPU | ✓ (via Vulkan/D3D12) | ✓ | ✓ | ✓ (via Metal) | ✓ | ✓ | △ (Dawn/wgpu) |

**Read this matrix as**: SYCL is the widest portable substrate excluding
the browser; WebGPU is the widest including the browser; CUDA and Metal
are the two non-portable end-points.

### §2.2 Concept rosetta (one row = same concept across all six)

| Concept | CUDA | HIP | SYCL | OpenCL | Metal | WebGPU |
|---------|------|-----|------|--------|-------|--------|
| top-level launch unit | grid | grid | nd_range | NDRange | grid | dispatch |
| middle group | block | block | work-group | work-group | threadgroup | workgroup |
| inner unit | thread | thread | work-item | work-item | thread | invocation |
| (sub-group) | warp (32) | wavefront (32/64) | sub_group | sub_group | simdgroup | subgroup |
| private memory | register/local | register/local | private | private | thread | private |
| group memory | __shared__ | __shared__ | local | local | threadgroup | workgroup |
| device memory | global | global | global | global | device | storage |
| read-only memory | __constant__ | __constant__ | constant | constant | constant | uniform |
| barrier | __syncthreads() | __syncthreads() | item.barrier() | barrier() | threadgroup_barrier | workgroupBarrier() |
| async copy | cp.async / TMA | (limited) | (extension) | async_work_group_copy | (Metal 4 tensors) | (planned v2) |
| atomic | atomicAdd, … | atomicAdd, … | atomic_ref | atomic_* | atomic_* | atomic*() |

Six rows, six columns — the matrix is dense, which is the whole point: the
underlying concepts are the same; only the spelling differs.

## §3 REQUIRES

| Dependency | Direction | Why |
|------------|-----------|-----|
| `chip-architecture` | upstream | SIMT/SIMD silicon model, SM/CU/EU/PE definitions, register file, shared-memory bank count |
| `chip-isa-n6` | upstream | n=6 ISA projection of GPU instruction stream — for hexa-chip mapping |
| `compiler-os` | downstream | LLVM / SPIR-V / PTX lowering, kernel JIT, sanitizer/profiler hooks |
| `chip-interconnect` | adjacent | host-device bandwidth (PCIe Gen5/6, CXL, NVLink, Infinity Fabric, UltraEthernet) — informs memory transfer cost model |
| `chip-hbm` | adjacent | device-memory bandwidth budget that the global-memory model exposes |
| `chip-thermal-power` | adjacent | per-kernel power budget; informs occupancy-vs-frequency tuning |

## §4 STRUCT (the invariant kernel)

The invariant kernel — what every one of the six models projects onto —
has 6 structural axes. **Each axis is one knob the programmer turns.**

```
                               ┌──────────────────────────────┐
                               │ host program (CPU)           │
                               │   - allocate device buffers   │
                               │   - enqueue kernels           │
                               │   - sync / read back          │
                               └──────────────┬───────────────┘
                                              │ command queue
              ┌──────────────────────────────┴──────────────────────────────┐
              │ device executor (GPU / accelerator)                         │
              │                                                              │
              │   grid (NDRange)                                             │
              │     ┌────────────────────────────────────┐                   │
              │     │ workgroup (block / threadgroup)    │                   │
              │     │   ┌─────────┐  ┌─────────┐         │  shared / local   │
              │     │   │ thread  │  │ thread  │  ...    │  memory           │
              │     │   │ (private│  │ (private│         │  (workgroup-      │
              │     │   │  reg)   │  │  reg)   │         │   scoped)         │
              │     │   └─────────┘  └─────────┘         │                   │
              │     └────────────────────────────────────┘                   │
              │                       │                                      │
              │              global / device memory                          │
              │              constant / uniform memory                       │
              └──────────────────────────────────────────────────────────────┘
```

### §4.1 The 6 invariant axes

| # | Axis | What it controls | CUDA spelling | Range/units |
|---|------|------------------|---------------|-------------|
| 1 | **grid shape** | total work-item count, 1D/2D/3D | `gridDim` × `blockDim` | (x, y, z), product ≤ device limit |
| 2 | **workgroup size** | co-scheduled thread count, shares memory & barrier | `blockDim` | typically 64–1024, hardware-limited |
| 3 | **memory tier** | which of 4 tiers a buffer lives in | `__shared__`, `__constant__`, global, register | tier ∈ {private, group, device, constant} |
| 4 | **barrier scope** | which set of threads must reach a sync point | `__syncthreads()`, `__syncwarp()`, cluster sync | scope ∈ {sub-group, workgroup, cluster, grid} |
| 5 | **launch dependency** | command-queue ordering, event/fence | streams, events, graphs | DAG of kernels |
| 6 | **sub-group width** | SIMD width inside a workgroup; warp/wavefront/simdgroup primitives | warp = 32 (NV), wavefront = 32 or 64 (AMD), simdgroup = 32 (Apple) | hardware-fixed, may be queried |

**These six axes are the contract surface**. A vendor-agnostic kernel
specifies exactly these six and nothing more; the projection layer fills
in the per-vendor spelling.

### §4.2 Memory model — 4 tiers + 1 substrate

| Tier | Scope | Latency (typical, 2026) | Bandwidth (typical) | Backed by |
|------|-------|-------------------------|----------------------|-----------|
| 0 — register / private | per-thread | 1 cycle | n/a (per-lane) | SM register file (per-thread allocation, spill to local on overflow) |
| 1 — group / local / shared / threadgroup / workgroup | per-workgroup | ~20 cycles | several TB/s aggregate | on-chip SRAM (banked, ≤ 228 KB on H100, ≤ 256 KB on Blackwell B200) |
| 2 — device / global / storage | per-device | 200–600 cycles | 3–8 TB/s (HBM3E, 2026) | HBM stack |
| 3 — constant / uniform | per-device, read-only | ~5 cycles (cached) | cache-hit-rate dependent | constant cache (small, ~64 KB) |
| substrate — host-device | cross-PCIe / CXL / NVLink | 0.5–4 µs | 64–1800 GB/s (NVLink5, 2026) | unified memory / mapped buffers / explicit copy |

**Read this table together with chip-hbm.md** — global-memory bandwidth is
the single dominant cost in most kernels, and the 4-tier hierarchy exists
specifically to amortise it.

### §4.3 Execution model — 4 stages × 2 modes (= τ × φ)

```
   kernel lifecycle                   memory mode
   ───────────────────                ─────────────
   1. compile     (host)              digital (compute pipeline)
   2. enqueue     (host queue)        analog  (graphics/raster pipeline)
   3. dispatch    (device executor)   ── shared with §4.2 memory model
   4. retire      (host sync)
```

τ=4 stages × φ=2 modes = 8 lifecycle×mode cells. Most GPGPU programs
exercise the (compile, enqueue, dispatch, retire) × (digital) column;
graphics + compute interop (Metal 4, WebGPU) exercises both.

## §5 FLOW (kernel launch worked example)

A vendor-agnostic kernel launch projected onto each of the 6 models. Same
program (vector add, N elements), same axes (grid = N/256, workgroup = 256,
device-tier output buffer, no sub-group ops), six spellings.

```
              ┌──────────────────────────┐
              │ vendor-agnostic kernel    │
              │   axes: grid, group, tier,│
              │         barrier, deps, sg │
              └────────────┬─────────────┘
                           │  projection
        ┌──────┬──────┬────┴────┬──────┬──────┬──────┐
       CUDA   HIP    SYCL   OpenCL  Metal  WebGPU
        │      │      │        │      │      │
       PTX  AMDGCN  SPIR-V  SPIR-V   AIR   WGSL→{SPIR-V,MSL,HLSL}
        │      │      │        │      │      │
        ▼      ▼      ▼        ▼      ▼      ▼
       NVIDIA AMD    Intel/AMD/NV    Apple   Browser/native
```

### §5.1 Per-vendor surface (vector add, N=2²⁰, fp32)

```cuda
// CUDA
__global__ void add(float* a, float* b, float* c, int n) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) c[i] = a[i] + b[i];
}
add<<<n/256, 256>>>(a, b, c, n);
```

```cpp
// HIP — source-compatible with CUDA modulo namespace
__global__ void add(float* a, float* b, float* c, int n) {
    int i = blockIdx.x * blockDim.x + threadIdx.x;
    if (i < n) c[i] = a[i] + b[i];
}
hipLaunchKernelGGL(add, dim3(n/256), dim3(256), 0, 0, a, b, c, n);
```

```cpp
// SYCL 2020
q.parallel_for(sycl::range<1>{n}, [=](sycl::id<1> i) {
    c[i] = a[i] + b[i];
});
```

```c
// OpenCL 3.0 kernel
__kernel void add(__global float* a, __global float* b, __global float* c) {
    int i = get_global_id(0);
    c[i] = a[i] + b[i];
}
// host: clEnqueueNDRangeKernel(queue, k, 1, NULL, &n, &local, 0, NULL, NULL);
```

```metal
// MSL (Metal 4)
kernel void add(device const float* a [[buffer(0)]],
                device const float* b [[buffer(1)]],
                device float*       c [[buffer(2)]],
                uint i [[thread_position_in_grid]]) {
    c[i] = a[i] + b[i];
}
```

```wgsl
// WGSL (WebGPU)
@group(0) @binding(0) var<storage, read>       a: array<f32>;
@group(0) @binding(1) var<storage, read>       b: array<f32>;
@group(0) @binding(2) var<storage, read_write> c: array<f32>;
@compute @workgroup_size(256)
fn add(@builtin(global_invocation_id) gid: vec3<u32>) {
    c[gid.x] = a[gid.x] + b[gid.x];
}
```

The bodies are nearly identical; the boilerplate is the divergence. **A
projection layer that reads the 6 invariant axes and emits these six
forms is a finite, mechanical translation.**

## §6 VERIFY (testable claims)

Falsifiable predictions of the vendor-agnostic model:

- **F-GPGPU-1 — Concept rosetta completeness**: every concept used in
  any of the 6 models maps to exactly one row of §2.2. Disprove by
  exhibiting a model concept that does not project onto §2.2 rows.
- **F-GPGPU-2 — 6-axis sufficiency**: every kernel launch in any of
  the 6 models is fully specified by §4.1 axes 1–6 plus the kernel body.
  Disprove by exhibiting a kernel launch that requires a 7th axis (e.g.,
  cluster sync on CC≥9.0 may already extend axis 4 — confirm or refute).
- **F-GPGPU-3 — Memory-tier 4-tier minimality**: every persistent
  buffer in any of the 6 models lives in exactly one of the 4 tiers in
  §4.2 (register / group / device / constant). Disprove by exhibiting a
  tier (e.g., Metal 4 tensor-typed memory, WebGPU storage-with-shader-
  read-only-flag) that requires a 5th tier rather than parameterising
  an existing one.
- **F-GPGPU-4 — IR-substrate sufficiency**: every kernel can be
  lowered to SPIR-V or PTX; the two together cover all 6 backends
  (CUDA → PTX, HIP → AMDGCN ≃ LLVM IR ≃ SPIR-V via translator, SYCL
  → SPIR-V, OpenCL → SPIR-V, Metal → AIR ≃ SPIR-V via translator,
  WebGPU → WGSL → SPIR-V via Tint). Disprove by exhibiting a kernel
  that lowers to neither without lossy rewrite.

## §7 EVOLVE

### §7.1 Tensor-typed memory (Metal 4, CUDA TMA, WGSL future)

Metal 4 introduces tensors as first-class types in both API and shading
language. CUDA Hopper introduced TMA (Tensor Memory Accelerator) and
async-bulk-copy. WGSL has tensor extensions in flight. The 4-tier memory
model in §4.2 may need a 5th *tile* tier (a typed view over group memory)
to capture this.

### §7.2 Cluster / multi-CTA sync (CUDA CC≥9.0, AMD analogues)

Hopper introduced thread-block clusters: a level between workgroup and
grid that share a portion of L2 / distributed shared memory. AMD CDNA3+
has analogous cooperative scheduling. §4.1 axis 4 (barrier scope) already
enumerates cluster sync; production confirmation pending across vendors.

### §7.3 Heterogeneous + neural integration

Metal 4 inlines neural network inference into shaders. CUDA's CUTLASS +
Tensor Cores collapses GEMM into kernel intrinsics. SYCL's
`khr_default_context` (rev 11) reduces context-creation overhead for
multi-device flows. The programming-model boundary is *expanding* into
ML graph execution — which historically lived above the programming
model in frameworks (PyTorch, TensorFlow, JAX).

### §7.4 Browser as the seventh ecosystem

WebGPU shipped in all four major browsers in April 2023 (Chrome/Edge),
2024 (Firefox), and 2025 (Safari 26 on macOS Tahoe / iOS 26). WebGPU v2
is in development as of 2026. The browser is the only target with a
*sandboxed* execution model; this constrains the programming model
(no raw pointers, bounded resource handles, validation-by-construction)
in a way the other 5 do not. Vendor-agnostic projection must respect
this constraint as a lower-bound on portability.

### §7.5 Open questions

1. Is **Vulkan Compute** a 7th first-class ecosystem or a profile of
   SPIR-V deployment? Current SSOT treats it as the latter; revisit if
   non-Khronos-aligned hardware (e.g., a fully Vulkan-native SoC)
   ships.
2. **Mojo / Triton / Pallas** — higher-level DSLs that target one of
   the 6. Do they belong in this SSOT or in a `kernel-dsl` peer?
   Current decision: peer (this SSOT covers the 6 backend-facing
   models; DSLs are a layer above).
3. **Tensor cores / matrix engines** as a 7th axis (5th memory tier
   + dedicated barrier) vs. as an extension of axis 6 (sub-group)?
   Defer until Metal 4 and CUDA 13 production telemetry stabilises
   (~2026-Q4).
4. **n=6 mapping** — hexa-chip projects this SSOT into 6 vendors ×
   4 lifecycle stages × 2 modes (digital/analog) = J₂ = 48 cells,
   not 24. The σ(6)·φ(6) = 24 lattice fits memory tiers + sub-group
   width; the J₂ extension is GPGPU-specific. See
   `~/core/hexa-chip/accel/gpgpu_n6/datasheet_gpgpu_n6.md` (snapshot)
   for the projection that hexa-chip uses.

## §8 References (web-search 2026-05-08)

- CUDA 13.2 — <https://docs.nvidia.com/cuda/cuda-programming-guide/pdf/cuda-programming-guide.pdf> (2026-03-04)
- HIP 7.2.53211 — <https://rocm.docs.amd.com/projects/HIP/>
- ROCm 7.2.3 release notes — <https://rocm.docs.amd.com/en/latest/about/release-notes.html>
- SYCL 2020 rev 11 — <https://registry.khronos.org/SYCL/specs/sycl-2020/html/sycl-2020.html> (2025-11-07)
- OpenCL 3.1.0 — <https://github.com/KhronosGroup/OpenCL-Docs> (2026-05-05)
- Metal 4 / MSL — <https://developer.apple.com/metal/Metal-Shading-Language-Specification.pdf> (2025-10-23)
- WebGPU — <https://www.w3.org/TR/webgpu/> (CR Draft, v2 in dev)
- WGSL — <https://www.w3.org/TR/WGSL/>
- SPIR-V (cross-cutting IR) — Khronos registry
