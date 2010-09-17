filetype plugin on

set wildignore=*.o,*.fasl,CVS,.git,log,temp,tmp

nmap <silent> <Leader>f :LustyFilesystemExplorer<CR>
nmap <silent> <Leader>r :LustyFilesystemExplorerFromHere<CR>
nmap <silent> <Leader>b :LustyBufferExplorer<CR>
nmap <silent> <Leader>g :LustyBufferGrep<CR>

:let ruby_no_expensive = 1
