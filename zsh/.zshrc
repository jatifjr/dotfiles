#
# --- PROFILING (START) ---
#

[[ -n "${ZSH_PROFILING_ENABLE}" ]] && zmodload zsh/zprof


#
# --- PROMPT CONFIGURATION ---
#

setopt prompt_subst
autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats '%b '
precmd() { vcs_info }

PS1='%F{8}%n@%m%f %F{2}%1~%f %F{8}${vcs_info_msg_0_}%f%F{2}%#%f '


#
# --- ALIASES ---
#

alias cp='cp -i'
alias ln='ln -i'
alias mv='mv -i'
alias rm='rm -I'

alias fpath='printf "%s\n" "${fpath[@]}"'
alias path='printf "%s\n" "${path[@]}"'


#
# --- TOOLCHAIN CONFIGURATIONS ---
#

# Python
export UV_NO_MODIFY_PATH=1
export UV_INSTALL_DIR="$XDG_DATA_HOME/uv/bin"
export UV_PYTHON_BIN_DIR="$UV_INSTALL_DIR"
export UV_TOOL_BIN_DIR="$UV_INSTALL_DIR"
export PATH="$UV_INSTALL_DIR:$PATH"

# Bun
export BUN_INSTALL="$XDG_DATA_HOME/bun"
export PATH="$BUN_INSTALL/bin:$PATH"

# Go
export GOPATH="$XDG_DATA_HOME/go"
export PATH="$GOPATH/bin:$PATH"

# Rust
export RUSTUP_HOME="$XDG_DATA_HOME/rustup"
export CARGO_HOME="$XDG_DATA_HOME/cargo"
export PATH="$CARGO_HOME/bin:$PATH"

# Custom Completions
export COMPDIR="$XDG_DATA_HOME/zsh/completions"
export FPATH="$COMPDIR:$FPATH"
export PATH="$XDG_BIN_HOME:$PATH"


#
# --- ZIMFW (Plugin Manager) ---
#

ZIM_CONFIG_FILE="$ZDOTDIR/.zimrc"
ZIM_HOME="$XDG_DATA_HOME/zim"

# Install zimfw if not present
if [[ ! -e "$ZIM_HOME/zimfw.zsh" ]]; then
    curl -fsSL --create-dirs -o "$ZIM_HOME/zimfw.zsh" \
        'https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh'
fi

# Initialize if config is newer than init script
if [[ ! -e "$ZIM_HOME/init.zsh" || "$ZIM_CONFIG_FILE" -nt "$ZIM_HOME/init.zsh" ]]; then
  source "$ZIM_HOME/zimfw.zsh" install
fi

source "$ZIM_HOME/init.zsh"


#
# --- UTILS ---
#

zbench() {
    local t
    t="$(mktemp -t 'zprof.XXXXXX')" || return
    { time ZSH_PROFILING_ENABLE=1 zsh -i -c exit >|"$t"; } 2>&1
    head -14 "$t"
    rm -f "$t"
}


#
# --- PROFILING (END) ---
#

[[ -n "${ZSH_PROFILING_ENABLE}" ]] && zprof
