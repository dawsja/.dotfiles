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

# Modifies the PATH and other Perl-related environment variables to include directories related to Perl for proper Perl binaries and libraries inclusion in the environment.
PATH="/home/ddominguez18/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="/home/ddominguez18/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/ddominguez18/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/ddominguez18/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/ddominguez18/perl5"; export PERL_MM_OPT;
