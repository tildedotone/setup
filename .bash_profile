# .bash_profile

if [ -f ~/.profile ]; then
	. ~/.profile
fi

if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin directories
PATH="$HOME/bin:$HOME/.local/bin:$PATH"

[[ $- != *i* ]] && return
if [[ -z "$TMUX" ]] ; then
    tmux has-session &> /dev/null
    if [ $? -eq 1 ]; then
        exec tmux new-session -s "one"
        exit
    else
        exec tmux attach -t "one"
        exit
    fi
fi
