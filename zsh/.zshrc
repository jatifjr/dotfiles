# --- Profiling ---
[[ -n "$ZSH_PROFILING_ENABLE" ]] && zmodload zsh/zprof

# --- Prompt ---
setopt prompt_subst
autoload -Uz vcs_info
zstyle ':vcs_info:git:*' formats '%b '; precmd() { vcs_info; }
PS1='%F{8}%n@%m%f %F{2}%1~%f %F{8}${vcs_info_msg_0_}%f%F{2}%#%f '

# --- Alias ---
alias cp='cp -i' ln='ln -i' mv='mv -i' rm='rm -i'
alias fpath='printf "%s\n" "${fpath[@]}"' path='printf "%s\n" "${path[@]}"'

# --- Toolchains ---
# volta (node.js)
export VOLTA_HOME=$XDG_DATA_HOME/volta
export VOLTA_FEATURE_PNPM=1

# bun
export BUN_INSTALL=$XDG_DATA_HOME/bun

# go
export GOPATH=$XDG_DATA_HOME/go
export GOCACHE=$XDG_CACHE_HOME/go-build

# --- Paths ---
path=(
    $VOLTA_HOME/bin
    $BUN_INSTALL/bin
    $path
)

# --- Function Paths ---
fpath=(
    $XDG_DATA_HOME/zsh/completions
    $fpath
)

# --- Zimfw ---
ZIM_CONFIG_FILE=$ZDOTDIR/.zimrc
ZIM_HOME=$XDG_DATA_HOME/zim
[[ -e $ZIM_HOME/zimfw.zsh ]] || \
  curl -fsSL --create-dirs -o $ZIM_HOME/zimfw.zsh \
  https://github.com/zimfw/zimfw/releases/latest/download/zimfw.zsh
[[ $ZIM_HOME/init.zsh -nt ${ZIM_CONFIG_FILE:-${ZDOTDIR:-$HOME}/.zimrc} ]] || \
  source $ZIM_HOME/zimfw.zsh init
source $ZIM_HOME/init.zsh

# --- End of profiling ---
zbench() {
    local t="$(mktemp -t zprof.XXXXXX)" || return
    { time ZSH_PROFILING_ENABLE=1 zsh -i -c exit >|"$t"; } 2>&1
    head -14 "$t"; rm -f "$t"
}
[[ -n "$ZSH_PROFILING_ENABLE" ]] && zprof
