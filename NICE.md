# Nice To Have

Make sure `.zshenv`, `.zprofile`, `.zshrc` are set up correctly.

## MacPorts

The [MacPorts](https://www.macports.org) Project is an open-source community initiative to design an easy-to-use system for compiling, installing, and upgrading either command-line, X11 or Aqua based open-source software on the Mac operating system.

How to install:
1. Install Apple's Command Line Developer Tools: `xcode-select --install`
2. Download MacPorts installer from [here](https://www.macports.org/install.php).
3. Install MacPorts from the downloaded .pkg file.

## Programming Language Setup

### Node.js

Free, open-source, cross-platform JavaScript runtime environment.

Use `n` to manage Node.js versions.

Make sure `$N_PREFIX` is set up correctly in `$ZDOTDIR/.zprofile`.

```sh
# Install n using MacPorts
sudo port install n

# Install Node.js LTS version
n lts

# Fast and disk space efficient package manager for projects
corepack enable pnpm
```

### Go

The Go programming language is an open source project to make programmers more productive.

Make sure `$GOPATH` is set up correctly in `$ZDOTDIR/.zprofile`.

- Install Go using MacPorts
```sh
# Install Go using MacPorts
sudo port install go

# Install gopls, the language server for Go
go install golang.org/x/tools/gopls@latest

# Install golangci-lint, the fast linters runner for Go
curl -sSfL https://golangci-lint.run/install.sh | sh -s -- -b $(go env GOPATH)/bin latest
```

### Python

Use `uv` to manage Python versions and packages.

Make sure `$UV_PYTHON_BIN_DIR` and `$UV_TOOL_BIN_DIR` are set up correctly in `$ZDOTDIR/.zprofile`.

```sh
# Install uv using MacPorts
sudo port install uv

# Install python using uv
uv python install

# Install zsh completion
uv generate-shell-completion zsh > $XDG_DATA_HOME/zsh/site-functions/_uv
uvx --generate-shell-completion zsh > $XDG_DATA_HOME/zsh/site-functions/_uvx

sudo ln -s $XDG_DATA_HOME/zsh/site-functions/_uv /usr/local/share/zsh/site-functions/_uv
sudo ln -s $XDG_DATA_HOME/zsh/site-functions/_uvx /usr/local/share/zsh/site-functions/_uvx
```

## Tools

### gemini-cli - AI coding agent CLI
```sh
npm i -g @google/gemini-cli
```

### mactop - terminal-based monitoring tool designed for Apple Silicon

```sh
sudo port install mactop
```

## Applications

List of good applications to have:
- [Antigravity](https://antigravity.google) - AI coding agent IDE
- [AppCleaner](https://freemacsoft.net/appcleaner) - Application uninstaller
- [Ghostty](https://ghostty.org) - Platform-native UI and GPU accelerated terminal emulator
- [Helium](https://helium.computer) - No adware, no bloat, no noise web browser
- [Hyperkey](https://hyperkey.app) - Hyper key mapping tool for macOS
- [OrbStack](https://orbstack.dev) - Fast replacement for Docker Desktop
