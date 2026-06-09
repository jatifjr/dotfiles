# Setup

Configure `.zshenv`, `.zprofile`, and `.zshrc` before proceeding, and restart the shell after any installation.

---

## Applications

| App | Description |
|-----|-------------|
| [Aerospace](https://github.com/nikitabobko/AeroSpace) | i3-like tiling window manager for macOS |
| [AppCleaner](https://freemacsoft.net/appcleaner) | Thorough application uninstaller |
| [Ghostty](https://ghostty.org) | Fast, GPU-accelerated, platform-native terminal emulator |
| [Helium](https://helium.computer) | Minimalist web browser, no adware or bloat |
| [Hyperkey](https://hyperkey.app) | Caps Lock to hyper key remapper |
| [LinearMouse](https://linearmouse.app) | The mouse and trackpad utility for Mac |
| [OrbStack](https://orbstack.dev) | Fast and lightweight Docker Desktop alternative |
| [Zed](https://zed.dev) | High-performance, minimal code editor |

---

## Development Toolchains

### Python

[Python](https://www.python.org) is a high-level, general-purpose language known for its readability, extensive standard library, and automatic memory management.

Managed via [uv](https://docs.astral.sh/uv).

**Installation**
```sh
curl -LsSf https://astral.sh/uv/install.sh | \
env \
    UV_INSTALL_DIR="${XDG_DATA_HOME:-$HOME/.local/share}/uv/bin" \
    UV_NO_MODIFY_PATH=1 \
    sh
```

**Shell completions**
```sh
uv generate-shell-completion zsh > ${XDG_DATA_HOME:-$HOME/.local/share}/zsh/site-functions/_uv
uvx --generate-shell-completion zsh > ${XDG_DATA_HOME:-$HOME/.local/share}/zsh/site-functions/_uvx
```

**Updates**
```sh
uv self update
```

**Python version**
```sh
uv python install
```

---

### Node.js

[Node.js](https://nodejs.org) is a cross-platform JavaScript runtime for servers, web apps, and command-line tooling.

Managed via [pnpm](https://pnpm.io).

**Installation**
```sh
curl -fsSL https://get.pnpm.io/install.sh | sh -
```

**Shell completions**
```sh
pnpm completion zsh > ${XDG_DATA_HOME:-$HOME/.local/share}/zsh/site-functions/_pnpm
```

**Updates**
```sh
pnpm self-update
```

**Node.js version**
```sh
pnpm runtime set node lts --global
```

---

### Rust

[Rust](https://rust-lang.org) is a systems language focused on performance, type safety, and memory safety without a garbage collector.

Managed via [rustup](https://rust-lang.org/tools/install).

**Installation**
```sh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | \
env \
    RUSTUP_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/rustup" \
    CARGO_HOME="${XDG_DATA_HOME:-$HOME/.local/share}/cargo" \
    sh -s -- --no-modify-path
```

**Shell completions**
```sh
rustup completions zsh > ${XDG_DATA_HOME:-$HOME/.local/share}/zsh/site-functions/_rustup
rustup completions zsh cargo > ${XDG_DATA_HOME:-$HOME/.local/share}/zsh/site-functions/_cargo
```

**Updates**
```sh
rustup update        # toolchain
rustup self update   # rustup itself
```

---

## MacPorts

[MacPorts](https://www.macports.org) manages command-line, X11, and Aqua-based open-source software on macOS. Supplements development toolchains with system and CLI packages.

**Installation**

1. Install Apple's Command Line Developer Tools:
```sh
xcode-select --install
```

2. Download and run the macOS package installer from the [MacPorts Releases](https://www.macports.org/install.php) page.

3. Update the ports tree:
```sh
sudo port selfupdate
```

---

## CLI Tools

### Mactop

[Mactop](https://github.com/metaspartan/mactop) is a terminal-based system monitor designed specifically for Apple Silicon.

Managed via [MacPorts](https://www.macports.org).

**Installation**
```sh
sudo port install mactop
```
