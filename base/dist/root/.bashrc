# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

shopt -s histappend
shopt -s checkwinsize

HISTSIZE=100000
HISTFILESIZE=200000
HISTCONTROL=erasedups

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

alias ls="ls --color=auto"
alias grep="grep --color=auto"

PS1='\[\033[01;31m\]\h\[\033[01;34m\] \W \$\[\033[00m\] '

export SHELL="/bin/bash"
export EDITOR="/usr/bin/vim"

export LS_OPTIONS='--color=auto'
eval "$(dircolors)"
