alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy" # copy path to clipboard
# alias grep='grep --color --line-number'
# alias gvim='mvim -p'
# alias ll='ls -lF' # long format listing; add / to end of directories
# alias la='ls -aF' # include dot files in listing; add / to end of directories
alias mv='mv -i' # prompt before moving a file that would overwrite an existing file
alias watch='watchr ~/.watchr.rb'

alias ls='ls -G'
alias capone='cap _1.4.1_'
alias ll='ls -l'
alias tar='nocorrect /usr/bin/tar'
alias sudo='nocorrect sudo'
alias rmate='mate app config db lib public spec test vendor/plugins'
# alias ri='ri -Tf ansi'
alias rtasks='rake --tasks'
# alias ss='./script/server'
# alias sc='./script/console'
alias quit='exit'
alias vi='mvim -p'
alias vim='mvim -p'
alias gvim='mvim -p'
alias gitfx='git fetch origin; gitx --all'
alias gitsdc='echo `git rev-parse HEAD` > last_staging'
alias gitrdc='git co `cat last_staging`'
# alias sp='script/spec -cfs'
alias grep='grep --with-filename --context=1 --color --line-number '
alias ypwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"
# alias 'push?'="git cherry -v origin"
# alias 'push-stable?'="git cherry -v origin/stable"
# alias 'push-prod?'="git cherry -v origin/production"
alias pass='cd ~/projects/edgecase/passwords'
alias gl='git log --graph --pretty=format:"%Cred%h%Creset — %s %Cgreen(%cr)%Creset" --abbrev-commit --date=relative'

alias icons='cd ~/Pictures/icons; open -a Preview **/*.png **/*.tiff  **/*.jpg'
alias preview='open -a Preview'

# Projects
alias slummer='cd ~/projects/edgecase/products/slummer'
alias mat='cd ~/projects/edgecase/clients/mathewsprinting'
alias pha='cd ~/projects/edgecase/clients/phase-ii'
alias prosper='cd ~/projects/edgecase/products/prosper'
alias bwm='cd ~/projects/edgecase/clients/buywithme'
alias cups='cd ~/projects/edgecase/libraries/cups-pdf-backend'
alias pdfm='cd ~/projects/edgecase/libraries/pdfmachine'
alias slum='cd ~/projects/edgecase/products/slumlord'
alias tod='cd ~/projects/edgecase/clients/transcripts'
alias dip='cd ~/projects/edgecase/clients/diplomas'

# Databses

alias pg_start='pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start'
alias pg_stop='pg_ctl -D /usr/local/var/postgres stop -s -m fast'
alias postgres_start='pg_ctl -D ~/.pgdata -l ~/.pgdata/psql.log start'  # mine
alias postgres_stop='pg_ctl -D ~/.pgdata stop'  # mine
alias mysql='/opt/local/bin/mysql5 -u root --socket=/tmp/mysql.sock'
alias mysqladmin='/opt/local/bin/mysqladmin5 -u root --socket=/tmp/mysql.sock'
alias start_mysql="sudo /opt/local/share/mysql5/mysql/mysql.server start"
alias stop_mysql="sudo /opt/local/share/mysql5/mysql/mysql.server stop"

# Rails

alias devlog='tail -200 -f log/development.log'
alias log='tail -f log/development.log'
alias restart='touch tmp/restart.txt'
alias rc='./script/rails console'
alias rg='./script/rails generate'
alias rmate='mate app config doc db features lib public script spec test stories liquid'
alias rs='./script/rails server'
alias sc='./script/console'
alias sg='./script/generate'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias ssd='./script/server --debugger'
alias testlog='tail -200 -f log/test.log'

# Git

alias gitrm='git ls-files --deleted | xargs git rm'
# alias gitx='gitx --all'
alias gpci='git-pair commit'
alias gp='git pair'
alias st='git status'
alias gst='git status'
alias gc='git commit'
alias gd='git diff'
alias gdc='git diff --cached'
alias go='git co'
alias getch='git fetch'
alias gf='git br -a | grep '

# cap
alias plog='cap SERVER=web production slice:tail_environment_logs'
