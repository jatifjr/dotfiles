# MacPorts
[[ -d /opt/local/bin || -d /opt/local/sbin ]] && PATH="/opt/local/bin:/opt/local/sbin:$PATH"

# Python uv
export UV_NO_MODIFY_PATH=1
export UV_INSTALL_DIR="$XDG_DATA_HOME/uv/bin"
export UV_PYTHON_BIN_DIR="$UV_INSTALL_DIR"
export UV_TOOL_BIN_DIR="$UV_INSTALL_DIR"
[[ -d $UV_INSTALL_DIR ]] && PATH="$UV_INSTALL_DIR:$PATH"

# Go
(( $+commands[go] )) && {
    export GOPATH="$XDG_DATA_HOME/go"
    PATH="$GOPATH/bin:$PATH"
}

# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
