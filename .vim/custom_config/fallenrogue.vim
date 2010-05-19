" update the :make command to tell Xcode to build
set makeprg=osascript\ -e\ \"tell\ application\ \\\"Xcode\\\"\"\ -e\ \"build\"\ -e\ \"end\ tell\"

function! XcodeClean()
        silent execute ':!osascript -e "tell application \"Xcode\"" -e "Clean" -e "end tell"'
endfunction
command! -complete=command XcodeClean call XcodeClean()

function! XcodeDebug()
        silent execute '!osascript -e "tell application \"Xcode\"" -e "Debug" -e "end tell"'
endfunction
command! -complete=command XcodeDebug call XcodeDebug()

" Command-K cleans the project
:noremap <D-k> :XcodeClean<CR>
" Command-Return Starts the program in the debugger
:noremap <D-CR> :XcodeDebug<CR>

