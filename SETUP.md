# Setup

Configure `.zshenv`, `.zprofile`, and `.zshrc` before proceeding, and restart the shell after any installation.

---

## MacPorts

[MacPorts](https://www.macports.org) is an open-source system that simplifies installing, upgrading, and compiling command-line, X11, or Aqua-based open-source software on macOS.

Installation:
1. Install Xcode Command Line Tools:
```sh
xcode-select --install
```

2. Download and run the macOS package installer from the [MacPorts Releases](https://www.macports.org/install.php) page.

3. Add shell completion:
```sh
curl -fsSL "https://raw.githubusercontent.com/zsh-users/zsh-completions/refs/heads/master/src/_port" | sudo tee "/opt/local/share/zsh/site-functions/_port" > /dev/null
# restart shell
```

4. Update the ports tree:
```sh
sudo port selfupdate
```

---

## Development Toolchains

### Node.js

[Node.js](https://nodejs.org) is a cross-platform, open-source JavaScript runtime environment.

Managed via [pnpm](https://pnpm.io).

Installation:
```sh
curl -fsSL https://get.pnpm.io/install.sh | PNPM_HOME="$HOME/.local/share/pnpm" sh
```

Shell completion:
```sh
pnpm completion zsh > "$HOME/.local/share/zsh/site-functions/_pnpm"
# restart shell
```

Updates:
```sh
pnpm self-update
```

Node.js installation:
```sh
pnpm runtime set node lts -g
```

### Go

[Go](https://go.dev) is a statically typed, compiled programming language designed for efficiency and simplicity.

Installation:
```sh
sudo port install go
```

Shell completion:
```sh
curl -fsSL "https://raw.githubusercontent.com/zsh-users/zsh-completions/refs/heads/master/src/_golang" | sudo tee "/opt/local/share/zsh/site-functions/_golang" > /dev/null
# restart shell
```

### Docker

[Docker](https://www.docker.com) is a platform for developing, shipping, and running applications in containers.

Docker requires a runtime. [Lima](https://lima-vm.io) is a good runtime for macOS.

Installation:
```sh
sudo port install docker docker-buildx-plugin docker-compose-plugin docker-credential-helper-osxkeychain lima
# restart shell
```

Setup:
```sh
limactl create --name=default template:docker
# restart shell
```

---

## CLI Tools

### Mactop

[Mactop](https://github.com/metaspartan/mactop) is a terminal-based monitoring tool designed for Apple Silicon.

Installation:
```sh
sudo port install mactop
```

### Ripgrep

[Ripgrep](https://github.com/BurntSushi/ripgrep) is a fast and feature-rich grep-like tool.

Installation:
```sh
sudo port install ripgrep
```

---

## Applications

Installed using the officially distributed installers.

| Name | Description |
|------|-------------|
| [AppCleaner](https://freemacsoft.net/appcleaner) | Thorough application uninstaller |
| [Freesm Launcher](https://freesmlauncher.org) | Custom Minecraft launcher |
| [Ghostty](https://ghostty.org) | GPU accelerated, platform-native terminal emulator |
| [Helium Browser](https://helium.computer) | Minimal, privacy-first browser |
| [Hyperkey](https://hyperkey.app) | Hyper key remapper |
| [LinearMouse](https://linearmouse.app) | Mouse and trackpad utility |
| [Velja](https://sindresorhus.com/velja) | Browser switcher |
| [Zed](https://zed.dev) | High-performance, minimal code editor |
