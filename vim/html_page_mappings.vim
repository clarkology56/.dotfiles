" Html Pages BAse
nnoremap <silent> ,hpba :call IndentTemplate('views/pages/base.html.erb')<return>/DeleteThis\\|ChangeSubTitle\\|ChangeTopBarNav<return>
" Htkl Pages Full Height body columns
nnoremap <silent> ,hpfh :call IndentTemplate('views/pages/full_height.html.erb')<return>/DeleteThis\\|ChangeSubTitle\\|ChangeTopBarNav\\|ChangeWidth<return>

" Html Pages TAbs
nnoremap <silent> ,hpta :call IndentTemplate('views/pages/tabs.html.erb')<return>/DeleteThis\\|ChangeText\\|ChangeIcon\\|ChangePath\\|ChangeMarginLeft\\|ChangeLogic<return>

" Htkl Pages Card Base
nnoremap <silent> ,hpcb :call IndentTemplate('views/pages/card_base.html.erb')<return>/DeleteThis<return>
" Htkl Pages Card Table
nnoremap <silent> ,hpct :call IndentTemplate('views/pages/card_table.html.erb')<return>/DeleteThis\\|ChangePath\\|ChangePathHelperArgOrArrayOfArgs\\|ChangePlaceholder<return>
