" Html Pages BAse
nnoremap <silent> ,hpba :call IndentTemplate('views/pages/base.html.erb')<return>/DeleteThis\\|ChangeTopBarNav\\|ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons<return>
" Html Pages Full Height body columns
nnoremap <silent> ,hpfh :call IndentTemplate('views/pages/full_height.html.erb')<return>/DeleteThis\\|ChangeSubTitle\\|ChangeTopBarNav\\|ChangeWidth<return>
" Html Pages header full
nnoremap <silent> ,hphf :call IndentTemplate('views/pages/page_header_full.html.erb')<return>/ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons\\|DeleteThis<return>


" Html Pages TAbs
nnoremap <silent> ,hpta :call IndentTemplate('views/pages/tabs.html.erb')<return>/DeleteThis\\|ChangeText\\|ChangeIcon\\|ChangePath\\|ChangeMarginLeft\\|ChangeLogic<return>

" Html Pages Card Inline wrapper
nnoremap <silent> ,hpci :call IndentTemplate('views/pages/inline_card_wrapper.html.erb')<return>/DeleteThis\\|ChangeMinPx<return>
" Html Pages Card Base
nnoremap <silent> ,hpcb :call IndentTemplate('views/pages/card_base.html.erb')<return>/DeleteThis\\|ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons<return>
" Html Pages Card Header full
nnoremap <silent> ,hpch :call IndentTemplate('views/pages/card_header_full.html.erb')<return>/ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons\\|DeleteThis<return>
" Html Pages Card Table
nnoremap <silent> ,hpct :call IndentTemplate('views/pages/card_table.html.erb')<return>/DeleteThis\\|ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons\\|ChangePathHelperArgOrArrayOfArgs\\|ChangePathHelper\\|ChangePlaceholder\\|ChangeWidth\\|ChangeColumnHeader\\|ChangeResources\\|ChangeResource\\|ChangeTableDataContents<return>
" Html Pages Card Table header full
nnoremap <silent> ,hpcT :call IndentTemplate('views/pages/card_table_header_full.html.erb')<return>/ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons\\|ChangePathHelperArgOrArrayOfArgs\\|ChangePathHelper\\|ChangePlaceholder\\|DeleteThis<return>
