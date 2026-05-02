# --- MISC ---

# Apple Terminal: disable session restore
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1

# Prevent path and fpath duplication
typeset -U path fpath

# Custom completion dir
[[ -d $XDG_DATA_HOME/zsh/completions ]] && FPATH="$XDG_DATA_HOME/zsh/completions:$FPATH"


# --- MACPORTS ---

[[ -d /opt/local/bin || -d /opt/local/sbin ]] && PATH="/opt/local/bin:/opt/local/sbin:$PATH"


# --- TOOLCHAIN ---

# Python (uv)
export UV_NO_MODIFY_PATH=1
export UV_INSTALL_DIR="$XDG_DATA_HOME/uv/bin"
export UV_PYTHON_BIN_DIR="$UV_INSTALL_DIR"
export UV_TOOL_BIN_DIR="$UV_INSTALL_DIR"
[[ -d $UV_INSTALL_DIR ]] && PATH="$UV_INSTALL_DIR:$PATH"

# Bun
export BUN_INSTALL="$XDG_DATA_HOME/bun"
[[ -d $BUN_INSTALL/bin ]] && PATH="$BUN_INSTALL/bin:$PATH"

# Go
export GOPATH="$XDG_DATA_HOME/go"
command -v go >/dev/null 2>&1 && PATH="$GOPATH/bin:$PATH"

# Rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
[[ -d $CARGO_HOME/bin ]] && PATH="$CARGO_HOME/bin:$PATH"
