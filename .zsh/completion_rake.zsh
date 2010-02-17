_rake_does_task_list_need_generating () {
  if [ ! -f .zsh_rake_cache ]; then return 0;
  else
    accurate=$(stat -f%m .zsh_rake_cache)
    changed=$(stat -f%m Rakefile)
    return $(expr $accurate '>=' $changed)
  fi
}

_rake () {
  if [ -f Rakefile ]; then
    if _rake_does_task_list_need_generating; then
      echo "\nGenerating .zsh_rake_cache..." > /dev/stderr
      rake --silent --tasks | cut -d " " -f 2 > .zsh_rake_cache
    fi
    compadd `cat .zsh_rake_cache`
  fi
}

compdef _rake rake
