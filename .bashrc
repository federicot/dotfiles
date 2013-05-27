#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias l='ls -la --color'
alias ls='ls --color=auto'

# Prompt
PS1='\[\e[1;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;34m\]\$\[\e[m\] '

# sudo autocomplete
complete -cf sudo

