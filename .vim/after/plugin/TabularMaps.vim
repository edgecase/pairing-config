if !exists(':Tabularize')
  finish " Tabular.vim wasn't loaded
endif

AddTabularPattern!  assignment      / = /l0
AddTabularPattern!  two_spaces      /  /l0
AddTabularPattern!  symbols         / :/l0
AddTabularPattern!  hash            /=>/
AddTabularPattern!  chunks          / \S\+/l0

AddTabularPipeline! multiple_spaces /  / map(a:lines, "substitute(v:val, '   *', '  ', 'g')") | tabular#TabularizeStrings(a:lines, '  ', 'l0')

AddTabularPipeline! argument_list   /(.*)/ map(a:lines, 'substitute(v:val, ''\s*\([(,)]\)\s*'', ''\1'', ''g'')')
                                       \ | tabular#TabularizeStrings(a:lines, '[(,)]', 'l0')
                                       \ | map(a:lines, 'substitute(v:val, ''\(\s*\),'', '',\1 '', "g")')
                                       \ | map(a:lines, 'substitute(v:val, ''\s*)'', ")", "g")')

AddTabularPattern! ternary_operator /^.\{-}\zs?\|:/l1
