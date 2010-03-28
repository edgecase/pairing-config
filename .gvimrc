" use gui tabs
  set guioptions+=e

" kill the menubar
  set guioptions-=T

" kill the scrollbars
  set guioptions-=r
  set guioptions-=L

" go full screen like you mean it
  set fuoptions=maxvert,maxhorz

" use a big, pretty font
  set guifont=Monaco:h18

" initial window size
  set lines=35 columns=100

" be partially transparent
  set transparency=7

" pretty but not terminal-compatible color scheme
  set background=dark
  colors baycomb
  hi CursorColumn  guibg=#1A1625
  hi CursorLine    guibg=#1A1625
  hi LineNr        guifg=#333355 guibg=#11121a

" attempt to load a custom config for the currently logged in user
runtime! custom_config/`whoami`.gvim
