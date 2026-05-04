# Options
setopt extended_glob
setopt interactive_comments
setopt no_beep


# History
HISTSIZE=10000
SAVEHIST=10000

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt hist_verify
setopt share_history


# Completions
autoload -Uz compinit && compinit

zstyle ':completion:*' menu select
zstyle ':completion:*' use-cache on


# Prompt
setopt prompt_subst

autoload -Uz vcs_info && precmd() {
    vcs_info
    if [[ -n ${vcs_info_msg_0_} ]]; then
        PROMPT='%F{8}%n@%m%f %F{2}%1~%f %F{8}${vcs_info_msg_0_}%f %F{2}%#%f '
    else
        PROMPT='%F{8}%n@%m%f %F{2}%1~%f %F{2}%#%f '
    fi
}

zstyle ':vcs_info:git:*' formats '%b'


# Keybindings
bindkey '^P' history-beginning-search-backward
bindkey '^N' history-beginning-search-forward


# Aliases
alias ls='ls --color=auto'
alias ll='ls -hl'
alias la='ls -hlA'
