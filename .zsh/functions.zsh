function gitdays {
  git log --author=Pairing --reverse --since="$@ days ago" --pretty="format:%n%Cgreen%cd%n%n%s%n%b%n---------------------------------------------" 
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

function git_bd { # git local branch deletion
  # deletes any pivotally numbered feature branches
  # branches without a remote are kept
  # branches with unpushed changes are kept
  git checkout production

  for bra in `git branch | awk '/^([0-9].*)/ {print $1}'`
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

function git_bd_merged { # git local branch deletion
  # deletes any local feature branches
  # branches with unmerged commits to production are kept
  git checkout production
  skip=('*' production master staging acceptance)
  # for bra in `git branch | awk '/(.*)/ {print $1}'`
  for bra in `git branch | awk '/([A-z0-9_-].*)/ {print $1}'`
  do
    set -A skipit "false"
    for sk in $skip
    do
      if [ "$bra" = "$sk" ]
      then
        set -A skipit "true"
      fi
    done
    if [ "$skipit" = "true" ]
    then
      echo skipping $bra
      continue
    fi
    set -A diff "`git cherry -v production $bra`"
    if [ "$diff" != "" ]
    then
      echo $bra has unmerged commits. not deleting
    else
      git branch -D $bra
    fi
  done

  git branch
}

function git_bd_merged_remote { # git local branch deletion
  # deletes any local feature branches
  # branches with unmerged commits to production are kept
  git checkout production
  skip=('*' production master staging acceptance)
  # for bra in `git branch | awk '/(.*)/ {print $1}'`
  for bra in `git branch | awk '/([A-z0-9_-].*)/ {print $1}'`
  do
    set -A skipit "false"
    for sk in $skip
    do
      if [ "$bra" = "$sk" ]
      then
        set -A skipit "true"
      fi
    done
    if [ "$skipit" = "true" ]
    then
      echo skipping $bra
      continue
    fi
    set -A diff "`git cherry -v production $bra`"
    if [ "$diff" != "" ]
    then
      echo $bra has unmerged commits. not deleting
    else
      git branch -D $bra
      git push origin :$bra
    fi
  done

  git branch
}
alias gbdmr='git_bd_merged_remote'

function gdt {
  git-delete-tags $@
}

