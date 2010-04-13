runtime! common_config/*.vim

" attempt to load a custom config for the currently logged in user
runtime! custom_config/`whoami`.vim
:filetype plugin on
:abbr hte the

" mapping the jumping between splits. Hold control while using vim nav.
map <C-J> <C-W>j<C-W>
map <C-K> <C-W>k<C-W>
map <C-H> <C-W>h<C-W>
map <C-L> <C-W>l<C-W>
