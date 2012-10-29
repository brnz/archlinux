#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

umask 022

if [[ ! "$(ps -C X)" == *X* ]]; then
    startx
fi
