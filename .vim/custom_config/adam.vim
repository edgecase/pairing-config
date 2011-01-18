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
set fillchars=fold:\ 

hi Folded         guifg=#F8F8F8           guibg=#141414




"function! CDToDirectory()
"  let ft = exec('set ft')
"  echo ft
"  if ft == 'filetype=netrw'
"    echo 'HERE'
"  endif
"endfunction
"autocmd VimEnter * call CDToDirectory()
