# Options
setopt extended_glob
setopt interactive_comments
setopt no_beep


# History
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt share_history

HISTSIZE=10000
SAVEHIST=10000


# Completions
autoload -Uz compinit && compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on


# Prompt
setopt prompt_subst

autoload -Uz vcs_info && precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats '%b '
zstyle ':vcs_info:git:*' actionformats '%b (%a) '

PROMPT='%F{8}%n@%m%f %F{2}%2~%f %F{8}${vcs_info_msg_0_}%f%F{2}%#%f '


# Keybindings
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward


# Aliases
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias la='ls -hlA'
