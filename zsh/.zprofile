# Disable shell sessions
export SHELL_SESSIONS_DISABLE=1

# MacPorts Installer addition on 2026-02-19_at_12:54:33: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.

# Automatically start tmux
if [[ $- == *i* ]] && [[ -z "$TMUX" ]]; then
    tmux new-session -A -s main
fi

# Added by OrbStack: command-line tools and integration
# This won't be added again if you remove it.
source ~/.orbstack/shell/init.zsh 2>/dev/null || :
