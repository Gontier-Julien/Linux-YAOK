# Linux-YAOK
Yet Another Optimized Kernel

# Yet another one
Linux Yaok is a kernel with **Stability First** and Performance in mind.

# Featury bits & pieces
- Build with Clang/LLVM Thin-Lto
- Dedicated Kernel for Intel/AMD CPU
- Dedicated Kernel for Home use and Server use
- No OC, timer frequency is set at 300HZ base
- BMQ CPU Scheduler
- Build with -03
- PREEMPT enabled by default
- Multigenerational LRU
- BBRv2 tcp_congestion_control
- FUTEX, FUTEX2, WINESYNC patch-set
- Latest & improved ZSTD patch-set
- Follow some Upstream Kernel changes
- Removed some debug and logging options

# TODO

- [ ] Add builds for Debian


# Contributors

Thanks to all those people that have made the kernel possible:

Alfred Chen for the [BMQ Scheduler](https://gitlab.com/alfredchen/projectc)

SirLucjan for many [patches](https://github.com/sirlucjan/kernel-patches)

Linux Xanmod for some [patches](https://github.com/xanmod/linux-patches) too

And the [Linux Kernel Developers and Supporters](https://www.kernel.org/)
