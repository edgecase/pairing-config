" don't want to see tab chars or trailing whitespace
set nolist


" happy folding
function! FoldText()
    let first = getline(v:foldstart)
    let last  = substitute(getline(v:foldend), '^\s\+', '', '')
    let total = v:foldend - v:foldstart
    return first.'  ('.total.' lines)  '.last
endfunction

set foldtext=FoldText()
set foldmethod=syntax
set foldlevel=1
set foldminlines=2
set fillchars=fold:\ 

map <Space> za
map <S-Space> zR

" Don't screw up folds when inserting text that might affect them, until
" leaving insert mode. Foldmethod is local to the window. Protect against
" screwing up folding when switching between windows.
" http://vim.wikia.com/wiki/Keep_folds_closed_while_inserting_text
autocmd InsertEnter * if !exists('w:last_fdm') | let w:last_fdm=&foldmethod | setlocal foldmethod=manual | endif
autocmd InsertLeave,WinLeave * if exists('w:last_fdm') | let &l:foldmethod=w:last_fdm | unlet w:last_fdm | endif



"function! CDToDirectory()
"  let ft = exec('set ft')
"  echo ft
"  if ft == 'filetype=netrw'
"    echo 'HERE'
"  endif
"endfunction
"autocmd VimEnter * call CDToDirectory()
