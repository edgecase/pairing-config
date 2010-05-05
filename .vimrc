runtime! common_config/*.vim

" attempt to load a custom config for the currently logged in user
runtime! custom_config/`whoami`.vim
:filetype plugin on
:abbr hte the

