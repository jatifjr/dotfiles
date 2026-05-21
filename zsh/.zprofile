# MacPorts
[[ -d /opt/local ]] && {
    path=("/opt/local/bin" "/opt/local/sbin" $path)
    fpath=("/opt/local/share/zsh/site-functions" $fpath)
    manpath=("/opt/local/share/man" $manpath)
}


# Rust
[[ -d "$HOME/.cargo" ]] && {
    path=("$HOME/.cargo/bin" $path)
}

# User bin
[[ -d "$HOME/.local/bin" ]] && {
    path=("$HOME/.local/bin" $path)
}


# Apple Terminal
[[ $TERM_PROGRAM == Apple_Terminal ]] && SHELL_SESSIONS_DISABLE=1
