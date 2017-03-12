#
# ~/.bashrc
#

## docker
#source ~/.dockerfunc

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"/usr/local/lib"
export TERM=xterm-256color

## default editor
export EDITOR=vim

## shortcuts
alias edvim='$EDITOR ~/.vimrc'
#alias eddocker='$EDITOR ~/.dockerfunc'
alias edbash='$EDITOR ~/.bashrc'
alias sobash='source ~/.bashrc'
alias tips='$EDITOR ~/.tips'

## cd alias
alias .='cd ./' # lol
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

tfg () {
  ssh -p 6969 tfgtts2@147.83.50.73 $@
}

## gradle
gradlew () {
  if [ -e "./gradlew" ]; then
    #echo "using wrapper"
    ./gradlew $@
  else
    gradle $@
  fi
}

wwatch () {
    while true; do
        clear
        $@
        if [ "$?" -ne "0" ]; then
            return 1
        fi
        sleep 1
    done
}
