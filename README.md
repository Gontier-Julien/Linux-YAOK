[![ko-fi](https://ko-fi.com/img/githubbutton_sm.svg)](https://ko-fi.com/V7V57BNHC)

# Linux-YAOK
Yet Another Optimized Kernel

# Yet another one
Linux Yaok is a kernel with `Stability First` and Performance in mind.

# Featury bits & pieces
- Build with Clang/LLVM Full-Lto
- Dedicated Kernel for x86-64-v3 architectures
- No OC, timer frequency is set at 250HZ base
- BMQ CPU Scheduler
- Build with -02
- PREEMPT enabled by default
- Latest & improved ZSTD patch-set
- Follow some Upstream Kernel changes
- Removed some debug and logging options

<br/>
Linux-YAOK follow a specific cylces of release and is tested before it is going in the repo.
The kernel while always follow the Lts cycles.

It while be updated every 2 versions.

With my current setup it not possible for me to compile each kernel every time a new version is out.

<br/>

**But if you're on Arch Linux don't use the Lts kernel (probably a "I use Arch BTW" elite user)**

All people who use Arch Linux, also want to have a kernel that is not always bleading edge.

I also recommend to take a small look at the [Wiki](https://github.com/Gontier-Julien/Linux-YAOK/wiki)

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

# Check if your system support the x86-64-v3 architecture

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

- [ ] Build server and official repo (partilly done)
- [ ] Add builds for Debian


# Contributors

Thanks to all those people that have made the kernel possible:

Ptr1337 from the [CachyOs repo](https://github.com/cachyos/linux-cachyos) for the base PKGBUILD

Alfred Chen for the [BMQ Scheduler](https://gitlab.com/alfredchen/projectc)

SirLucjan for many [patches](https://github.com/sirlucjan/kernel-patches)

Linux Xanmod for some [patches](https://github.com/xanmod/linux-patches) too

And the [Linux Kernel Developers and Supporters](https://www.kernel.org/)