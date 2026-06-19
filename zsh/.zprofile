typeset -U path fpath manpath

# Homebrew
[[ -d "/opt/homebrew" ]] && {
    path=("/opt/homebrew/bin" "/opt/homebrew/sbin" $path)
    fpath=("/opt/homebrew/share/zsh/site-functions" $fpath)
    manpath=("/opt/homebrew/share/man" $manpath)
}

# User
[[ -d "$HOME/.local" ]] && {
    path=("$HOME/.local/bin" $path)
    fpath=("$HOME/.local/share/zsh/site-functions" $fpath)
    manpath=("$HOME/.local/share/man" $manpath)
}

# Python (uv)
[[ -d "$XDG_DATA_HOME/uv" ]] && {
    export UV_TOOL_BIN_DIR="$XDG_DATA_HOME/uv/bin"
    export UV_PYTHON_BIN_DIR="$UV_TOOL_BIN_DIR"
    path=("$UV_TOOL_BIN_DIR" $path)
}

# Node.js (pnpm)
[[ -d "$XDG_DATA_HOME/pnpm" ]] && {
    export PNPM_HOME="$XDG_DATA_HOME/pnpm"
    path=("$PNPM_HOME/bin" $path)
}

# Go
(( $+commands[go] )) && {
    export GOPATH="$XDG_DATA_HOME/go"
    path=("$GOPATH/bin" $path)
}

# Docker
(( $+commands[docker] )) && export DOCKER_CONFIG="$XDG_CONFIG_HOME/docker"


# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
