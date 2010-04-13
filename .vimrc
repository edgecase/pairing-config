runtime! common_config/*.vim

" attempt to load a custom config for the currently logged in user
runtime! custom_config/`whoami`.vim
:filetype plugin on

" mapping the jumping between splits. Hold control while using vim nav.
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
map <C-L> <C-W>l<C-W>_
