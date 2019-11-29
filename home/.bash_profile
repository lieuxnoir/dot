#
# ~/.bash_profile
#

# Get the aliases and functions
[[ -f ~/.bashrc ]] && . ~/.bashrc

# Paths
export PATH+=:$HOME/.local/bin

export HISTCONTROL=ignoreboth:erasedups
export HISTSIZE=-1

export LESSHISTFILE=-

export NNN_OPENER=opn
export PF_INFO="title os host kernel uptime pkgs memory palette"
