# Setup

Configure `.zshenv`, `.zprofile`, and `.zshrc` before proceeding, and restart the shell after any installation.

---

## Homebrew

[Homebrew](https://brew.sh) is a free and open-source package manager that simplifies installing and managing software on macOS.

Most of the development toolchains, cli tools, and applications are managed via Homebrew.

Installation:
```sh
curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
```

Commands:
```sh
brew install    # Install a package
brew uninstall  # Uninstall a package
brew update     # Update Homebrew itself
brew outdated   # List outdated packages
brew upgrade    # Upgrade outdated packages
brew cleanup    # Remove outdated package versions
```

---

## Development Toolchains

### Python

[Python](https://www.python.org) is a high-level programming language known for its readability, simplicity, and versatility.

Managed via [uv](https://docs.astral.sh/uv).

Installation:
```sh
curl -fsSL https://astral.sh/uv/install.sh | UV_INSTALL_DIR="$HOME/.local/share/uv/bin" UV_NO_MODIFY_PATH=1 sh
```

Shell completion:
```sh
uv generate-shell-completion zsh > "$HOME/.local/share/zsh/site-functions/_uv"
uvx --generate-shell-completion zsh > "$HOME/.local/share/zsh/site-functions/_uvx"
```

Updates:
```sh
uv self update
```

Python installation:
```sh
uv python install
```

---

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
```

Updates:
```sh
pnpm self-update
```

Node.js installation:
```sh
pnpm runtime set node lts -g
```

---

### Go

[Go](https://go.dev) is a statically typed, compiled programming language designed for efficiency and simplicity.

Installation:
```sh
brew install go
```

Shell completion:
```sh
curl -fsSLo "$HOME/.local/share/zsh/site-functions/_go" "https://raw.githubusercontent.com/zsh-users/zsh-completions/refs/heads/master/src/_golang"
```

---

### Docker

[Docker](https://www.docker.com) is a platform for developing, shipping, and running applications in containers.

Docker requires [colima](https://colima.run) as runtime.

Installation:
```sh
brew install colima
brew install docker docker-buildx docker-compose docker-credential-helper
```

---

## CLI Tools

### Mactop

[Mactop](https://github.com/metaspartan/mactop) is a terminal-based monitoring tool designed for Apple Silicon.

Installation:
```sh
brew install mactop
```

---

## Applications

Installed using Homebrew or `brew install --cask <name>`.

| Name | Description |
|------|-------------|
| [appcleaner](https://freemacsoft.net/appcleaner) | Thorough application uninstaller |
| [ghostty](https://ghostty.org) | GPU accelerated, platform-native terminal emulator |
| [helium-browser](https://helium.computer) | Minimal, privacy-first browser |
| [hyperkey](https://hyperkey.app) | Hyper key remapper |
| [linearmouse](https://linearmouse.app) | Mouse and trackpad utility |
| [zed](https://zed.dev) | High-performance, minimal code editor |

___

Installed using the official distribution channels.

| Name | Description |
|------|-------------|
| [Freesm Launcher](https://freesmlauncher.org) | Custom Minecraft launcher |
| [Velja](https://sindresorhus.com/velja) | Browser switcher |
