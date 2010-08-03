" don't wrap long lines
  set nowrap

" show commands as we type them
  set showcmd

" highlight matching brackets
  set showmatch

" scroll the window when we get near the edge
  set scrolloff=4 sidescrolloff=10
  
" use 2 spaces for tabs
  set expandtab tabstop=2 softtabstop=2 shiftwidth=2

" enable line numbers, and don't make them any wider than necessary
  set number numberwidth=2

" show the first match as search strings are typed
  set incsearch

" searching is case insensitive when all lowercase
  set ignorecase smartcase
 
" assume the /g flag on substitutions to replace all matches in a line
  set gdefault

" set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

" pick up external file modifications
  set autoread

" don't abandon buffers when unloading
  set hidden

" match indentation of previous line
  set autoindent

" don't blink the cursor
  set guicursor=a:blinkon0

" show current line info (current/total)
  set ruler rulerformat=%=%l/%L

" don't show status line (other than between split windows)
  set laststatus=2

" don't beep for errors
  set visualbell

" make backspace work in insert mode
  set backspace=indent,eol,start

" have the mouse enabled all the time
  set mouse=a
  
" use tab-complete to see a list of possiblities when entering commands
  set wildmenu 

" allow lots of tabs
  set tabpagemax=20

" remember last position in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif

