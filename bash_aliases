alias rehash='source $HOME/.bash_profile'
alias ebrc="open $HOME/.bashrc"

# Command/Application aliases
alias la='ls -A'
alias ll='ls -lAGh'

# Code location aliases
alias Code='cd $HOME/Code && pwd && ls -lAGh'

# Git aliases
alias s='git status'
alias dd='git diff'
alias a='git add'
alias mlog='git log --oneline --reverse --since="5am" --author="Anton" | sed "s/^/* /"'
