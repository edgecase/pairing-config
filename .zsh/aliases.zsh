# My aliases
alias c='clear'
alias cpwd="pwd | ruby -pe'\$_.chomp!' | pbcopy"
alias la='ls -laF'
alias st='git status'
alias push='git push'
alias ss='./script/server'
alias ss1='./script/server -p 3001'
alias sc='./script/console'
alias sg='./script/generate'
alias postgres_start='pg_ctl -D ~/.pgdata -l ~/.pgdata/psql.log start'
alias postgres_stop='pg_ctl -D ~/.pgdata stop'
alias mysql='/opt/local/bin/mysql5 -u root --socket=/tmp/mysql.sock'
alias mysqladmin='/opt/local/bin/mysqladmin5 -u root --socket=/tmp/mysql.sock'
alias mysql_config='/opt/local/bin/mysql_config5'
alias restart='touch tmp/restart.txt'
alias ajaxrdoc="rdoc --fmt ajax --exclude '.*generator.*' --exclude '.*test.*' --exclude '.*spec.*'"
alias log='tail -f log/development.log'
alias gvim='mvim -p'
alias gitrm='git ls-files --deleted | xargs git rm'
alias icons='cd ~/Pictures/icons; open -a Preview **/*.png **/*.tiff  **/*.jpg'
alias preview='open -a Preview'
alias rebase='git fetch; git rebase origin/master'

function gitdays {
  git log --author=Adam --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------" 
}

# accepts a css file and compacts the delcarations to one line
function css_compact {
  cat $@ | css2sass | sass -t compact > $@
}

# hamlizes whatever is on the clipboard
function pbhaml {
  pbpaste | html2haml | pbcopy
}

function md {
  markdown.pl $@ > /tmp/generated_by_markdown.html; open /tmp/generated_by_markdown.html
}
