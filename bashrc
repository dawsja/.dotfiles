#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Defines aliases for ls and grep commands with colored output.
alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Defines the prompt format for the shell.
#PS1='[\u@\h \W]\$ '
# Custom prompt format.
PS1='[\u@\h (\@) \W]\$ '

# Starts a tmux session named default or attaches to an existing one if not already in a tmux session and not in an SSH connection.
if [ -z "$TMUX" ] && [ "$SSH_CONNECTION" = "" ]; then
    tmux attach-session -t default || tmux new-session -s default
fi

# Creates aliases for vim and vi commands to use nvim.
alias vim='nvim'
alias vi='nvim'

# Sets the environment variable TERM to xterm.
export TERM=xterm
