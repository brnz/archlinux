#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

alias ls='ls -X --color=auto'
alias ll='ls -Ahl'
alias emacs='emacs -nw'
alias vlc='cvlc'
alias sshot='~/scripts/sshot'
alias hz='~/scripts/hz'
#PS1='\[\e[0;30m\]\u \W\[\e[m\] \[\e[0;33m\]\$\[\e[m\] '
PS1='\[\e[1;30m\]\u \W\[\e[m\] \[\e[1;33m\]\$\[\e[m\] '

hz() {
    exec ~/scripts/hz
}

xz() {
    exec ~/scripts/xz $1
}

mvz() {
    exec ~/scripts/mvz $1 $2
}

ss() {
    exec ~/scripts/ss $1 $2
}
