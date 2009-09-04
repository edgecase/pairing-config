# Put the string "hostname::/full/directory/path" in the title bar:
set_term_title() { 
  echo -ne "\e]2;$PWD\a" 
}

# Put the parentdir/currentdir in the tab
set_term_tab() {
  echo -ne "\e]1;$PWD:h:t/$PWD:t\a" 
}

set_running_app() {
 printf "\e]1; $PWD:t:$(history $HISTCMD | cut -b7- ) \a"
}

precmd() { 
  set_term_title
  set_term_tab
  set_prompt
}

preexec() { 
  set_running_app
}

postexec() {
  set_running_app
}
