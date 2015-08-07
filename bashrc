# aliases, shell variables, and prompt
source "${HOME}/.bash_aliases"
source "${HOME}/.bash_prompt"
source "${HOME}/.bash_shell_variables"
#source "${HOME}/.bash_git_autocomplete"
#source "${HOME}/.bash_git_prompt"
#source "${HOME}/.bash_git_syntax_aware"
#[[ -s "$HOME/.rvm/contrib/ps1_functions" ]] &&
#source "$HOME/.rvm/contrib/ps1_functions"


# PATH...
PATH="${HOME}/bin"                                            # First home folder bin
PATH="${PATH}:/usr/local/bin:/usr/local/sbin"                 # local stuffs
PATH="${PATH}:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"     # Then add the other default OS X places
PATH="${PATH}:~/.composer/vendor/bin"                         # PHP Composer binaries
export PATH

export CDPATH=".:${HOME}/sites/"
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# chruby
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh
