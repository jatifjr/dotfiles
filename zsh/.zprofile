# MacPorts
[[ -d /opt/local ]] && {
    path=("/opt/local/bin" "/opt/local/sbin" $path)
    manpath=("/opt/local/share/man" $manpath)
}


# Node.js (n)
(( $+commands[n] )) && {
    export N_PREFIX="$XDG_DATA_HOME/n"
    path=("$N_PREFIX/bin" $path)
}

# Go
(( $+commands[go] )) && {
    export GOPATH="$XDG_DATA_HOME/go"
    path=("$GOPATH/bin" $path)
}

# Python (uv)
(( $+commands[uv] )) && {
    UV_DATA="$XDG_DATA_HOME/uv"
    export UV_PYTHON_BIN_DIR="$UV_DATA/bin"
    export UV_TOOL_BIN_DIR="$UV_DATA/bin"
    path=("$UV_DATA/bin" $path)
}


# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
