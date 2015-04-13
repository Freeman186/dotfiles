alias rehash='source $HOME/.bash_profile'
alias ebrc="open $HOME/.bashrc"

# Command/Application aliases
alias la='ls -A'
alias ll='ls -lAGh'
alias vi='vim'
alias composer="php ~/composer.phar"

# Code location aliases
alias sites='cd $HOME/sites && pwd && ls -lAGh'

# Project aliases
alias captix='cd $HOME/sites && cd captix-events'
alias grok='cd $HOME/sites && cd groksite'

# Git aliases
alias git s='git status'
alias git dd='git diff'
alias git a='git add'

# Ruby/Rails helper aliases
alias b='bundle'
alias be="bundle exec $1"
alias bu='bundle update'
alias rake='bundle exec rake'

#Project tools aliases
function phpspec() {
  export USE_ZEND_ALLOC=0;

  PROJECT_DIRECTORY=`git rev-parse --show-toplevel`

    STOP_ON_FAILURE=''

    if [[ $@ == *run* ]]
      then
        STOP_ON_FAILURE='--stop-on-failure'
        fi

        php "${PROJECT_DIRECTORY}/vendor/bin/phpspec" "$@" $STOP_ON_FAILURE --format=nyan.cat

        export USE_ZEND_ALLOC=1
}

function integration() {

  PROJECT_DIRECTORY=`git rev-parse --show-toplevel`

    php "${PROJECT_DIRECTORY}/vendor/bin/codecept" run Integration "$@" --verbose
}
