# Setup

Ensure `.zshenv`, `.zprofile`, and `.zshrc` are configured correctly before proceeding with any setup.

## MacPorts

The [MacPorts](https://www.macports.org) Project is an open-source community initiative that provides an easy-to-use system for compiling, installing, and upgrading command-line, X11, or Aqua-based open-source software on macOS.

**Installation:**
1. Install Apple's Command Line Developer Tools: `xcode-select --install`
2. Download the MacPorts installer from the [official website](https://www.macports.org/install.php).
3. Run the downloaded `.pkg` file to complete the installation.

---

## Development Toolchains

### Python

Use [uv](https://docs.astral.sh/uv) to manage Python versions, packages, and projects.

Install via MacPorts:
```sh
sudo port install uv
```

Install the latest Python version using uv:
```sh
uv python install
```

### Node.js

[Node.js](https://nodejs.org) is a free, open-source, cross-platform JavaScript runtime environment for building servers, web apps, command-line tools, and scripts.

Install via MacPorts:
```sh
sudo port install nodejs24 npm11
```

Update npm to the latest version:
```sh
sudo npm u -g npm
```
> ⚠️ **Note:** Installing global packages with MacPorts-installed npm requires `sudo` privileges. Proceed with caution.

Install pnpm:
```sh
sudo npm i -g pnpm
```
> **Note:** Install pnpm via npm rather than MacPorts because the MacPorts package is rarely updated.

### Go

[Go](https://go.dev) is an open-source, compiled language designed by Google for developer productivity, seamless concurrency, and high-performance networking.

Install via MacPorts:
```sh
sudo port install go gopls
```

### Rust

[Rust](https://rust-lang.org) is a general-purpose programming language focused on performance, type safety, concurrency, and memory safety.

Install via MacPorts:
```sh
sudo port install cargo rust-src rust-analyzer
```

### Colima

[Colima](https://colima.run) provides lightweight container runtimes for macOS with support for Docker, containerd, Kubernetes, and Incus.

Install via MacPorts:
```sh
sudo port install colima docker docker-compose-plugins docker-credential-helper-osxkeychain
```

---

## CLI Tools

### Mactop

[Mactop](https://github.com/metaspartan/mactop) is a terminal-based system monitor designed specifically for Apple Silicon.

Install via MacPorts:
```sh
sudo port install mactop
```

---

## Applications

Recommended applications for macOS:
- [Aerospace](https://github.com/nikitabobko/AeroSpace) – i3-like tiling window manager for macOS.
- [AppCleaner](https://freemacsoft.net/appcleaner) – Thorough application uninstaller.
- [Ghostty](https://ghostty.org) – Fast, GPU-accelerated, platform-native terminal emulator.
- [Helium](https://helium.computer) – Minimalist web browser with no adware or bloat.
- [Hyperkey](https://hyperkey.app) – Remaps the Caps Lock key to a dedicated hyper key.
- [UnnaturalScrollWheels](https://github.com/ther0n/UnnaturalScrollWheels) – Change mouse scroll wheel to a natural scrolling direction.
- [Zed](https://zed.dev) – High-performance, minimal code editor built for speed.
