# --- PROFILING (START) ---

[[ -n $ZSH_PROFILING_ENABLE ]] && zmodload zsh/zprof


# --- PROMPT ---

autoload -Uz vcs_info

zstyle ':vcs_info:git:*' formats '%b '

precmd() {
  vcs_info
}

setopt prompt_subst

PS1='%F{8}%n@%m%f %F{2}%1~%f %F{8}${vcs_info_msg_0_}%f%F{2}%#%f '


# --- ALIASES ---

alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

alias ll='ls -hl'
alias la='ls -hlA'

alias path='printf "%s\n" "${path[@]}"'
alias fpath='printf "%s\n" "${fpath[@]}"'


# --- PLUGINS ---

ZPLUX_HOME="$XDG_DATA_HOME/zplux"

[[ -f "$ZPLUX_HOME/init.zsh" ]] || {
  [[ -d $ZPLUX_HOME ]] || mkdir -p -- $ZPLUX_HOME
  command -v git >/dev/null 2>&1 && git clone --depth 1 "https://github.com/jatifjr/zplux.git" $ZPLUX_HOME >/dev/null 2>&1
}

source "$ZPLUX_HOME/init.zsh"


# --- UTILS ---

zbench() {
  local t
  t=$(mktemp -t zprof.XXXXXX) || return

  { time ZSH_PROFILING_ENABLE=1 zsh -i -c exit >| "$t" } 2>&1
  head -14 "$t"

  rm -f -- "$t"
}


# --- PROFILING (END) ---

[[ -n $ZSH_PROFILING_ENABLE ]] && zprof
