# Linux-YAOK
Yet Another Optimized Kernel

# Yet another one
Linux Yaok is a kernel with **Stability First** and Performance in mind.

# Featury bits & pieces
- CLANG Optimization with LLVM Thin-LTO
- Dedicated Kernel for Intel/AMD CPU
- Dedicated Kernel for Home use and Server use
- No OC, timer frequency is set at 300HZ base
- CacULE CPU Scheduler
- Build with -03
- PREEMPT enabled by default
- Xanmod multigenerational LRU
- BBRv2 tcp_congestion_control
- FUTEX, WINESYNC & FUTEX2 patch-set
- Latest Paragon NTFS3 driver support
- Latest & improved ZSTD patch-set
- Removed some debug and logging options

# Contributors

Thanks to all those people that have made the kernel possible:

Hamad Marri for the [CacULE Scheduler](https://github.com/hamadmarri/cacule-cpu-scheduler)

SirLucjan for many [patches](https://github.com/sirlucjan/kernel-patches)

Linux Xanmod for some [patches](https://github.com/xanmod/linux-patches) too

And the [Linux Kernel Developers and Supporters](https://www.kernel.org/)
