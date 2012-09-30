#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

alias ls='ls -X --color=auto'
alias ll='ls -Ahl'
alias emacs='emacs -nw'
alias vlc='cvlc'
alias sshot='~/scripts/sshot'
