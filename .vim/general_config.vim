  scriptencoding utf-8

" Set temporary directory (don't litter local dir with swp/tmp files)
  set directory=/tmp/

" have one hundred lines of command-line (etc) history:
  set history=100

" Show us the command we're typing
  set showcmd

" Highlight matching parens
  set showmatch
  set completeopt=menu,preview

" Set six-line offset at top and bottom to see upcoming text
  set scrolloff=6
  
" Use the tab complete menu
  set wildmenu 
  set wildmode=list:longest,full

" have the mouse enabled all the time:
  set mouse=a

" don't make it look like there are line breaks where there aren't:
  set nowrap

" use indents of 2 spaces, and have them copied down lines:
  set expandtab
  set tabstop=2
  set softtabstop=2 
  set shiftwidth=2

  set autoindent
  
" Set to auto read when a file is changed from the outside
  set autoread

" show the `best match so far' as search strings are typed:
  set incsearch

" searching is case insensitive when all lowercase
  set ignorecase
  set smartcase
 
" assume the /g flag on :s substitutions to replace all matches in a line:
  set gdefault

" make backspace work in insert mode
  set backspace=indent,eol,start

" remember last position in file
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
  
" Nice statusbar
  set laststatus=2
  set statusline=\ "
  set statusline+=%f\ " file name
  set statusline+=[
  set statusline+=%{strlen(&ft)?&ft:'none'}, " filetype
  set statusline+=%{&fileformat}] " file format

  set statusline+=%h%1*%m%r%w%0* " flag
  set statusline+=%= " right align
  set statusline+=%-14.(%l,%c%V%)\ %<%P " offset

