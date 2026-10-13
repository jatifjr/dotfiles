typeset -U path fpath manpath


# MacPorts Paths
[[ -d "/opt/local" ]] && {
    path=("/opt/local/bin" "/opt/local/sbin" $path)
    fpath=("/opt/local/share/zsh/site-functions" $fpath)
    manpath=("/opt/local/share/man" $manpath)
}

# User Paths
[[ -d "$XDG_BIN_HOME" ]] && {
    path=("$XDG_BIN_HOME" $path)
    fpath=("$XDG_DATA_HOME/zsh/site-functions" $fpath)
    manpath=("$XDG_DATA_HOME/man" $manpath)
}


# Node.js (pnpm)
[[ -d "$XDG_DATA_HOME/pnpm" ]] && {
    export PNPM_HOME="$XDG_DATA_HOME/pnpm"
    path=("$PNPM_HOME/bin" $path)
    export NPM_CONFIG_CACHE="$XDG_CACHE_HOME/npm"
    export npm_config_cache="$NPM_CONFIG_CACHE"
}

# Bun
[[ -d "$XDG_DATA_HOME/bun" ]] && {
    export BUN_INSTALL="$XDG_DATA_HOME/bun"
    path=("$BUN_INSTALL/bin" $path)
}

# Golang
(( $+commands[go] )) && {
    export GOPATH="$XDG_DATA_HOME/go"
    path=("$GOPATH/bin" $path)
}

# Docker (lima)
(( $+commands[limactl] && $+commands[docker] )) && {
    export DOCKER_HOST="$(limactl list default --format 'unix://{{.Dir}}/sock/docker.sock' 2>/dev/null)"
}


# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
