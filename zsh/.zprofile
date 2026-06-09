typeset -U path fpath manpath

# MacPorts
[[ -d "/opt/local" ]] && {
    path=("/opt/local/bin" "/opt/local/sbin" $path)
    fpath=("/opt/local/share/zsh/site-functions" $fpath)
    manpath=("/opt/local/share/man" $manpath)
}

# User
[[ -d "$HOME/.local" ]] && {
    path=("$HOME/.local/bin" $path)
    fpath=("$HOME/.local/share/zsh/site-functions" $fpath)
    manpath=("$HOME/.local/share/man" $manpath)
}

# Docker (OrbStack)
[[ -d "$HOME/.orbstack" ]] && {
    path=("$HOME/.orbstack/bin" $path)
    fpath=("$HOME/.orbstack/shell/completions/zsh" $fpath)
}

# Python (uv)
[[ -d "$XDG_DATA_HOME/uv" ]] && {
    export UV_INSTALL_DIR="$XDG_DATA_HOME/uv/bin"
    export UV_PYTHON_BIN_DIR="$UV_INSTALL_DIR"
    export UV_TOOL_BIN_DIR="$UV_INSTALL_DIR"
    path=("$UV_INSTALL_DIR" $path)
}

# Node.js (pnpm)
[[ -d "$XDG_DATA_HOME/pnpm" ]] && {
    export PNPM_HOME="$XDG_DATA_HOME/pnpm"
    path=("$PNPM_HOME/bin" $path)
}

# Rust (rustup + cargo)
[[ -d "$XDG_DATA_HOME/rustup" ]] && {
    export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
    export CARGO_HOME="$XDG_DATA_HOME/cargo"
    path=("$CARGO_HOME/bin" $path)
}

# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
