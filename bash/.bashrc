#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Aliases
alias l='ls -la --color'
alias ls='ls --color=auto'
alias lx='ll -BX'                   # sort by extension
alias lz='ll -rS'                   # sort by size
alias lt='ll -rt'                   # sort by date
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias df='df -h'
alias du='du -c -h'
alias :q=' exit'
alias cd..='cd ..'

# Prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}
PS1='$(parse_git_branch)\[\e[1;32m\]\u@\h\[\e[m\] \[\e[1;34m\]\W\[\e[m\] \[\e[1;34m\]\$\[\e[m\] '

# sudo autocomplete
complete -cf sudo

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=1000000
HISTFILESIZE=1000000

# Editor
export EDITOR="vim"
export VISUAL="vim"
export CHROME_BIN="google-chrome-stable"

export PATH="$PATH:$HOME/.gem/ruby/2.1.0/bin"
