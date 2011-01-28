function gitdays {
git log --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------" 
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

function railstags() {
rtags --vi -a -f tags -R app -R lib -R script -R spec
}

function push_configs() {
pushd
cd ~/projects/config
git add . && git commit -a && git push
popd
}

function pull_configs() {
pushd
cd ~/projects/config
git pull
popd
}

function vack() {
ack -l $* | xargs mvim -p
}

function reload! {
echo Restarting Passenger...
touch tmp/restart.txt
}

function internet\? {
(ping -c 3 -t 3 google.com >/dev/null 2>&1 && echo 'yep') || echo 'nope'
}

function hamlize(){
  find app/views -name '*erb' | xargs html2haml -r
}

function git_bd { # git local branch deletion
  # deletes any pivotally numbered feature branches
  # branches without a remote are kept
  # branches with unpushed changes are kept
  git checkout master

  for bra in `git branch | awk '/([0-9].*)/ {print $1}'`
  do
    set -A o `git branch -r | grep $bra`
    if [ "$o" != "" ]
    then
      set -A diff "`git cherry -v $o $bra`"
      if [ "$diff" != "" ]
      then
        echo $bra has unpushed changes. not deleting
      else
        git branch -D $bra
      fi
    else
      echo $bra did not have an origin of the same name
    fi
  done

  git branch
}
