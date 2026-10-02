# Build-LFS
# Build-LFS

Build-LFS is a custom Debian-based general-purpose desktop Linux distribution assembled from existing open-source components.

## About

The goal of this project is to learn how a functional graphical Linux distribution can be assembled by combining existing open-source software rather than implementing every operating-system component from scratch.

Build-LFS currently uses Debian Live's `live-build` framework to assemble the operating system into a bootable ISO.

## Current Stack

* Debian 13 (Trixie)
* Linux kernel
* Debian Live
* live-build
* systemd
* Xfce Desktop
* X.Org
* LightDM
* NetworkManager
* PipeWire
* WirePlumber
* Mesa
* Thunar
* Firefox ESR
* Synaptic
* Calamares
* QEMU

## Build Environment

The project is currently built using:

* Windows
* WSL 2
* Ubuntu

The final system is a bootable Debian-based graphical Linux live ISO.

## Project Structure

```text
Build-LFS/
├── auto/
│   └── config
├── config/
│   ├── package-lists/
│   └── includes.chroot/
├── scripts/
│   ├── build.sh
│   └── run-qemu.sh
├── assets/
├── docs/
├── .gitignore
└── README.md
```

## Building

The main live-build configuration is located at:

```text
auto/config
```

Additional package selections are stored under:

```text
config/package-lists/
```

Build the system with:

```bash
./scripts/build.sh
```

The generated ISO is intentionally excluded from Git.

## Testing

The generated ISO can be tested with QEMU:

```bash
./scripts/run-qemu.sh
```

## Current Status

The project currently produces a bootable graphical Linux live ISO containing an Xfce desktop environment and common desktop functionality.

Current components include:

* Graphical desktop
* Linux kernel
* systemd
* Networking
* Audio
* File manager
* Web browser
* Package management
* Graphical installer framework
* QEMU testing

## Long-Term Goals

Future development may include:

* Custom branding
* Custom wallpaper and themes
* Custom boot screen
* Custom application selection
* Desktop customization
* Improved installer configuration
* Better hardware testing
* Reproducible automated builds
* GitHub Actions based builds
* Release images

## Philosophy

Build-LFS focuses on understanding how operating-system components fit together while reusing mature open-source projects wherever practical.

The project does not attempt to replace the Linux kernel, desktop environment, drivers, or other major system components with custom implementations.

## Project Name

The GitHub repository is named **Build-LFS**.

The current distribution branding used inside the system is **Kapil Linux**.

## License

Build-LFS contains software from Debian and other open-source projects. Each component remains under its respective license.

The licensing of the original Build-LFS configuration, scripts, and documentation will be documented separately.
