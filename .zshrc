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

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  

alias jruby='jruby-1.5.6'
alias jgem='gem-jruby-1.5.6'
alias jirb='irb-jruby-1.5.6'
