autoload -U compinit && compinit
autoload colors && colors

source ~/.zsh/aliases.zsh
source ~/.zsh/bindkeys.zsh
source ~/.zsh/completion.zsh
source ~/.zsh/completion_rake.zsh
source ~/.zsh/exports.zsh
source ~/.zsh/functions.zsh
source ~/.zsh/history.zsh
source ~/.zsh/prompt.zsh
source ~/.zsh/set_options.zsh

if [[ -s ~/.zsh/custom.zsh ]] ; then source ~/.zsh/custom.zsh ; fi

if [[ -s ~/.rvm/scripts/rvm ]] ; then source ~/.rvm/scripts/rvm ; fi

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
PATH=$PATH:/usr/local/share/npm/bin

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
