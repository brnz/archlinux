#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

umask 022

if [[ ! "$(ps -C X)" == *X* ]]; then
    startx
fi

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
