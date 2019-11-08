# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Prompt
PS1='\W \$ '

# Aliases
alias batt='cat /sys/class/power_supply/BATT/capacity'
alias ls='ls --color=auto --group-directories-first'
