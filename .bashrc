#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#set -o vi

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# local lib
export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
export PATH=/opt/clion/bin:$PATH

export EDITOR=vim
export TERM="xterm-256color"

# edit config files
alias edvim='$EDITOR ~/.vimrc'
alias edbash='$EDITOR ~/.bashrc'
alias sobash='source ~/.bashrc'

alias ..='cd ../'
alias tmux="tmux -u"

function gradlew {
    if [ -f "./gradlew" ]; then
        ./gradlew $@
    else
        gradle $@
    fi
}

# kills unnecessary java processes when working with idea
function javaclean {
    me=$(whoami)
    idea=$(ps -ef | grep ^$me | grep clion.sh | grep -v grep | awk '{print $2}')
    echo "+ IDEA PID is $idea"
    echo "+ KILLING IN PROGRESS..."
    for jv in $(ps -ef | grep ^$me | grep "bin/java" | grep -v grep | awk "{ if(\$3 != \"$idea\") print \$2 }"); do
        kill -s SIGTERM $jv
    done
    echo "+ KILLING ENDED"
}

clear

source ~/.bashrc.d/*.sh
archey3
