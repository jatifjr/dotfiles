typeset -U path fpath manpath

# MacPorts
[[ -d /opt/local ]] && {
    path=("/opt/local/bin" "/opt/local/sbin" $path)
    fpath=("/opt/local/share/zsh/site-functions" $fpath)
    manpath=("/opt/local/share/man" $manpath)
}

# User bin
[[ -d "$HOME/.local/bin" ]] && path=("$HOME/.local/bin" $path)

# User site functions
[[ -d "$XDG_DATA_HOME/zsh/site-functions" ]] && fpath=("$XDG_DATA_HOME/zsh/site-functions" $fpath)

# Python
(( $+commands[uv] )) && {
    export UV_PYTHON_BIN_DIR="$XDG_DATA_HOME/uv/bin"
    export UV_TOOL_BIN_DIR="$XDG_DATA_HOME/uv/bin"
    path=("$XDG_DATA_HOME/uv/bin" $path)
}

# Node.js
(( $+commands[npm] )) && {
    export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
    export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
}

(( $+commands[pnpm] )) && {
    export PNPM_HOME="$XDG_DATA_HOME/pnpm"
    path=("$PNPM_HOME/bin" $path)
}

# Go
(( $+commands[go] )) && {
    export GOPATH="$XDG_DATA_HOME/go"
    path=("$GOPATH/bin" $path)
}

# Rust
(( $+commands[cargo] )) && {
    export CARGO_HOME="$XDG_DATA_HOME/cargo"
    path=("$CARGO_HOME/bin" $path)
}

# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1

export PATH FPATH MANPATH
