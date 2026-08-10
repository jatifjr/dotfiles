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


# Node.js (pnpm)
[[ -d "$XDG_DATA_HOME/pnpm" ]] && {
    export PNPM_HOME="$XDG_DATA_HOME/pnpm"
    path=("$PNPM_HOME/bin" $path)
    export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
}

# Golang
(( $+commands[go] )) && {
    export GOPATH="$XDG_DATA_HOME/go"
    path=("$GOPATH/bin" $path)
}

# Python (uv)
[[ -d "$XDG_DATA_HOME/uv" ]] && {
    export UV_PYTHON_BIN_DIR="$XDG_DATA_HOME/uv/bin"
    export UV_TOOL_BIN_DIR="$UV_PYTHON_BIN_DIR"
    path=("$UV_PYTHON_BIN_DIR" $path)
}

# Docker (lima)
(( $+commands[limactl] && $+commands[docker] )) && {
    export DOCKER_HOST="$(limactl list default --format 'unix://{{.Dir}}/sock/docker.sock' 2>/dev/null)"
}


# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
