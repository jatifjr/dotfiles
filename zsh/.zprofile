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


# Web Development Toolchain (vite-plus)
[[ -d "$XDG_DATA_HOME/vite-plus" && -f "$XDG_CONFIG_HOME/vite-plus/env" ]] && {
    source "$XDG_CONFIG_HOME/vite-plus/env"
}


# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
