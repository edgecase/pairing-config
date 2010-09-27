" I avoid tabs
  nmap gs :e db/schema.rb<cr>
  nmap gr :e config/routes.rb<cr>

let g:fuf_autoPreview = 0
let g:fuf_enumeratingLimit = 20
let g:fuf_file_exclude = '\v\~$|' .
\                        '\.(o|exe|dll|bak|swp|log|sqlite3|png|gif|jpg)$|' .
\                        '(^|[/\\])\.(hg|git|bzr|bundle)($|[/\\])|' .
\                        '(^|[/\\])(log|tmp|vendor|system|doc|coverage)($|[/\\])'

