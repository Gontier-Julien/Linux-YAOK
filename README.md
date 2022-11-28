[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V57BNHC)

# Linux-YAOK 🐧
Yet Another Optimized Kernel

# Yet another one
Linux Yaok is a kernel with `Stability First` and Performance in mind.

# Featury bits & pieces
- Build with Clang/LLVM Full-Lto
- x86-64-v2 as the base Kernel architecture
- Dedicated Kernel for x86-64-v3 architectures
- Build with -02 and latest LTS cycle for stability
- PREEMPT enabled by default
- Tweaked default CFS CPU Scheduler
- No OC, timer frequency is set at 250HZ base
- Latest & improved ZSTD patch-set
- Follow some Upstream Kernel changes
- Removed a lot of debug and logging options

<br/>
Linux-YAOK follow always follow the latest LTS cycles and is tested before it is going in the repo.

It while be updated every 5 versions.

With my current setup it not possible for me to compile each kernel every time a new version come out.

<br/>

**But if you're on Arch Linux don't use the LTS kernel (probably a "I use Arch BTW" elite user)**

All people who use Arch Linux, also want to have a kernel that is not always bleading edge and stable.

I also recommend to take a small look at the [Wiki](https://github.com/Gontier-Julien/Linux-YAOK/wiki)

# Recommandations

Add this to the end of your `sysctl.conf`:

```
vm.swappiness=10 (set it to 0 if you don't have a swap)
vm.vfs_cache_pressure=50
vm.dirty_ratio = 10
vm.dirty_background_ratio = 5
net.ipv4.tcp_fastopen = 3
net.ipv4.tcp_tw_reuse = 1
net.core.default_qdisc = cake
net.ipv4.tcp_congestion_control = bbr
```
This should improve performance further.

# Repo

Add this to the end of your `pacman.conf`:

```
[linux-yaok]
SigLevel = Optional TrustedOnly
Server = https://github.com/gontier-julien/linux-yaok/releases/latest/download
```

# DKMS

Since Linux YAOK use Clang/LLVM, you will need to edit your `/etc/dkms/framework.conf` config to make the module compile for the kernel.

Add the following at the **end** of you're `/etc/dkms/framework.conf` file:
```
export LLVM=1
export CC=clang
```

# Check if your system support the x86-64-v2 and x86-64-v3 architectures

>(processor from before the Nehalem ear (November 11, 2008))

<br/>

Check which architecture-levels your CPU supports with:
```
/lib/ld-linux-x86-64.so.2 --help
```
Example output if your system supporting up to x86-64-v3:
```
Subdirectories of glibc-hwcaps directories, in priority order:
  x86-64-v4
  x86-64-v3 (supported, searched)
  x86-64-v2 (supported, searched)
```

# TODO

- [x] Switching the base architecture to x86-64-v2 (~late/the end of 2022)
- [ ] Build server and official repo (partilly done)
- [ ] Add builds for Debian


# Contributors

Thanks to all those people that have made this kernel possible:

SirLucjan for the main [patches](https://github.com/sirlucjan/kernel-patches)

The Frogging-Family for their [patches](https://github.com/Frogging-Family/linux-tkg/tree/master/linux-tkg-patches)

And all of the [Linux Kernel Developers and Supporters](https://www.kernel.org/)