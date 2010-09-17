# STUFF

alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"
alias grep='grep --color --line-number'
alias gvim='mvim -p'
alias ll='ls -lF' # long format listing; add / to end of directories
alias la='ls -aF' # include dot files in listing; add / to end of directories
alias mv='mv -i' # prompt before moving a file that would overwrite an existing file

# MYSQL
alias start_mysql='/usr/local/bin/mysqld &'
alias stop_mysql='killall -v mysqld'
# PRETTY THINGS, SO WHAT THAT I LIKE PRETTY THINGS. 

alias icons='cd ~/Pictures/icons; open -a Preview **/*.png **/*.tiff  **/*.jpg'
alias preview='open -a Preview'

# RAILS

alias devlog='tail -200 -f log/development.log'
alias log='tail -f log/development.log'
alias restart='touch tmp/restart.txt'
alias rc='./script/rails console'
alias rg='./script/rails generate'
alias rs='./script/rails server'
alias sc='./script/console'
alias sg='./script/generate'
alias sp='./script/spec -cfs'
alias ss='./script/server'
alias ssd='./script/server --debugger'
alias testlog='tail -200 -f log/test.log'

# GIT

alias gitx='gitx --all'
alias gp='git pair'

# PROJECT SHORTCUTS

alias bwm='cd ~/Code/EdgeCase/buywithme'

# MONGODB
alias mongo.start='mongod run --config /usr/local/Cellar/mongodb/1.6.2-x86_64/mongod.conf &'
