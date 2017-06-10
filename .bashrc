#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias mp='mplayer'

# local lib
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH

export EDITOR=vim
export TERM="xterm-256color"

# edit config files
alias edvim='$EDITOR ~/.vimrc'
alias edbash='$EDITOR ~/.bashrc'
alias sobash='source ~/.bashrc'

# cd utils
alias ..='cd ../'

#export PS1="\u@\h \W \$ "
