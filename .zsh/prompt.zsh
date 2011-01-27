# Put the string "hostname::/full/directory/path" in the title bar:
set_term_title() {
  echo -ne "\e]2;$PWD\a"
}

# Put the parentdir/currentdir in the tab
set_term_tab() {
  echo -ne "\e]1;$PWD:h:t/$PWD:t\a"
}

function set_prompt() {
  export PS1='%2/ ~ '

  branch_name=$(git_branch_name)
  author_name=$(git_author_name)
  if [ -n "$branch_name" ]; then
    export PS1='%1~%{$reset_color$bold_color$fg[green]%}%{$reset_color$fg[green]%} ($author_name: $branch_name)%{$reset_color%} ~ '
  fi
}

function git_branch_name() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function git_author_name() {
  git config --get user.name | sed 's/\([a-zA-Z+]\)[a-zA-Z]* */\1/g' | tr '[A-Z]' '[a-z]'
}

precmd() {
  set_term_title
  set_term_tab
  set_prompt
}
