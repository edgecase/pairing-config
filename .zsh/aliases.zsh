alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy" # copy path to clipboard
alias grep='grep --color --line-number'
alias vim='mvim -v' #use mvim version of vim as terminal vim
alias vi='mvim -v' #use mvim version of vim as terminal vim
alias gvim='mvim -p'
alias ll='ls -lF' # long format listing; add / to end of directories
alias la='ls -alF' # include dot files in listing; add / to end of directories
alias mv='mv -i' # prompt before moving a file that would overwrite an existing file
alias watch='watchr ~/.watchr.rb'
alias lop='sudo lsof -i -P | grep -i "listen"' # show open ports

alias icons='cd ~/Pictures/icons; open -a Preview **/*.png **/*.tiff  **/*.jpg'
alias preview='open -a Preview'
alias bwm='cd ~/projects/buywithme'

# Databses

alias mysql='/usr/local/bin/mysql -u root --socket=/tmp/mysql.sock'
alias mysqladmin='/usr/local/bin/mysqladmin -u root --socket=/tmp/mysql.sock'
alias mysql_config='/usr/local/bin/mysql_config'
alias pg_start='pg_ctl -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl stop -s -m fast'
alias pg_status='pg_ctl status'

# Rails

alias be='bundle exec'
alias devlog='tail -200 -f log/development.log'
alias log='tail -f log/development.log'
alias restart='touch tmp/restart.txt'
alias rmate='mate app config doc db features lib public script spec test stories liquid'
alias rs='bundle exec rails s'
alias rc='bundle exec rails c'
alias rg='bundle exec rails g'
alias sc='./script/console'
alias sg='./script/generate'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias ssd='./script/server --debugger'
alias testlog='tail -200 -f log/test.log'
alias cukelog='tail -200 -f log/cucumber.log'

# Rack

alias ru='bundle exec rackup config.ru'

# Git

alias gitrm='git ls-files -z --deleted | xargs -0 git rm'
alias gitx='gitx --all'
alias gpci='git-pair commit'
alias gp='git pair'
alias push='git push'
alias rebase='git fetch; git rebase origin/master'
alias st='git status'
alias gst='git status'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias go='git co'
alias getch='git fetch'
alias resolve='vim -p $(git diff --name-only --diff-filter=U | xargs)'
alias tug='git pull -r origin'

# cap
alias plog='cap SERVER=web production slice:tail_environment_logs'
alias gf='git br -a | grep '

alias rails-bootstrap='ruby ~/rails-bootstrap/rails-bootstrap.rb'

# history
alias sudo='sudo ' # allow running sudo against an alias
alias redo='`\history -n | tail -n1`' # run last command again
alias now='sudo redo' # I meant sudo on that last command

