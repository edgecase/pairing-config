" bring in the bundles
" get out of insert mode with cmd-i
imap <D-i> <Esc>

call pathogen#runtime_append_all_bundles()

runtime! common_config/*.vim

" attempt to load a custom config for the currently logged in user
runtime! custom_config/`whoami`.vim
:filetype plugin on
:abbr hte the

let g:LustyExplorerSuppressRubyWarning = 1
