#
# ~/.bashrc
#

## docker
#source ~/.dockerfunc

## default editor
export EDITOR=vim

## shortcuts
alias edvim='$EDITOR ~/.vimrc'
alias eddocker='$EDITOR ~/.dockerfunc'
alias edbash='$EDITOR ~/.bashrc'
alias sobash='source ~/.bashrc'
alias tips='$EDITOR ~/.tips'

## cd alias
alias .='cd ./' # lol
alias ..='cd ../'
alias ...='cd ../../'
alias ....='cd ../../../'
alias .....='cd ../../../../'

## gradle
gradlew () {
  if [ -e "./gradlew" ]; then
    #echo "using wrapper"
    ./gradlew $@
  else
    gradle $@
  fi
}
