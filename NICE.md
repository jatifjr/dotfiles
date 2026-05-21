# Nice To Have

Before doing any setup, make sure `.zshenv`, `.zprofile`, `.zshrc` are set up correctly.

## MacPorts

The [MacPorts](https://www.macports.org) Project is an open-source community initiative to design an easy-to-use system for compiling, installing, and upgrading either command-line, X11 or Aqua based open-source software on the Mac operating system.

How to install:
1. Install Apple's Command Line Developer Tools: `xcode-select --install`
2. Download MacPorts installer from [here](https://www.macports.org/install.php).
3. Install MacPorts from the downloaded .pkg file.

## Programming Language Setup

### Node.js

[Node.js](https://nodejs.org) is a free, open-source, cross-platform JavaScript runtime environment that lets developers create servers, web apps, command line tools and scripts.

Install using MacPorts:
```sh
sudo port install nodejs24 npm11
```

(Optional) Install pnpm as a better package manager for projects
```sh
npm i -g pnpm
```

### Rust

[Rust](https://rust-lang.org) is a general-purpose programming language which emphasizes performance, type safety, concurrency, and memory safety.

Install using the installation script:
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y --no-modify-path
```

### Python

Use `uv` to manage Python versions and packages.

Make sure `$UV_PYTHON_BIN_DIR` and `$UV_TOOL_BIN_DIR` are set up correctly in `$ZDOTDIR/.zprofile`.

```sh
# Install uv using MacPorts
sudo port install uv

# Install python using uv
uv python install
```

## Tools

### mactop - terminal-based monitoring tool designed for Apple Silicon

```sh
sudo port install mactop
```

## Applications

List of good applications to have:
- [AppCleaner](https://freemacsoft.net/appcleaner) - Application uninstaller
- [Ghostty](https://ghostty.org) - Platform-native UI and GPU accelerated terminal emulator
- [Helium](https://helium.computer) - No adware, no bloat, no noise web browser
- [Hyperkey](https://hyperkey.app) - Hyper key mapping tool for macOS
- [OrbStack](https://orbstack.dev) - Fast replacement for Docker Desktop
- [Zed](https://zed.dev) - Minimal code editor crafted for speed
