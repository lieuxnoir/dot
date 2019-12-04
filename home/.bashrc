#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\W \$ '

# Aliases
alias batt='cat /sys/class/power_supply/BAT0/capacity'
alias ls='ls --color=auto --group-directories-first'

# Functions
doas() {
    su -c "$(printf ' %q' "$@")"
}
