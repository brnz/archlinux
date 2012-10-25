#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ $TERM != "screen" ]] && exec tmux
[ -n "$TMUX" ] && export TERM=screen-256color

#alias ls='ls --color=auto'
#PS1='[\u@\h \W]\$ '

alias ls='ls -X --color=auto'
alias ll='ls -Ahl'
alias emacs='emacs -nw'
#alias vlc='cvlc'
alias sudo='sudo '
alias suvi='sudo vim'

# sysadmin
alias shutdown='sudo shutdown -ht sec 0'
alias reboot='sudo reboot'
alias suspend='sudo pm-suspend'
alias pacman='sudo pacman'

# misc
alias dwmi='~/scripts/dwmi'
alias nyc='urxvt -fn "xft:nyc:pixel=10"'
alias hcl='rm ~/.bash_history; history -c;'
#alias pacman='echo 'Nothing''

# FALL 2012
alias katz='ssh cs61c-ev@hive8.cs.berkeley.edu'
alias vaz='ssh cs70-ik@hive8.cs.berkeley.edu'

#PS1='\[\e[0;30m\]\u \W\[\e[m\] \[\e[0;33m\]\$\[\e[m\] '
PS1='\[\e[1;30m\]\u \W\[\e[m\] \[\e[1;33m\]\$\[\e[m\] '

# Hz
hzz() {
    cp -a ~/{dwm,scripts,.gtkrc-2.0,.bash_profile,.bashrc,.emacs,.hgrc,.ncmpcpp,.rtorrent.rc,.vimrc,.xbindkeysrc,.xinitrc,.Xresources,.mozilla/firefox/h30r20tn.default/chrome/userChrome.css,.fonts,.vimperator,.vimperatorrc,.tmux.conf,.vim} ~/Hz
    cd ~/Hz
    git add . -A
    git commit -m 'auto update'
    git push -u origin master
    cd -
}

# renameZ
mvz() {
    a=1
    for i in *.$2; do
        new=$(printf "$1%02d.$2" ${a})
        mv ${i} ${new}
        let "a = a + 1"
    done
}

# screenshot
sshot() {
    i=$1
    if [[ "$i" == "" ]]; then
        i="sshot.png"
    else
        if [[ ! "$i" == *.png ]]; then
        i="$i.png"
        fi
    fi
    import -window root ~/$i
}

# exztract
#xzt() {
#    for i in *; do
#        7z x ${i}
#    done
#}

# refresh
fresh() {
    xrdb -merge ~/.Xresources
    cd ~/.fonts
    mkfontscale
    mkfontdir
    xset fp rehash
    cd -
}

# lameV
lamev() {
    mkdir new
    for i in *.mp3; do
        lame -V 2 --verbose ${i} new/${i}
    done
}
