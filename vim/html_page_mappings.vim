" Html Pages BAse
nnoremap <silent> ,hpba :call IndentTemplate('views/pages/base.html.erb')<return>/DeleteThis\\|ChangeTopBarNav\\|ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons<return>
" Html Pages Full Height body columns
nnoremap <silent> ,hpfh :call IndentTemplate('views/pages/full_height.html.erb')<return>/DeleteThis\\|ChangeSubTitle\\|ChangeTopBarNav\\|ChangeWidth<return>
" Html Pages header full
nnoremap <silent> ,hphf :call IndentTemplate('views/pages/page_header_full.html.erb')<return>/ChangeTitle\\|ChangeSubTitle\\|ChangeActionButtons\\|DeleteThis<return>
" Html Pages TAbs
nnoremap <silent> ,hpta :call IndentTemplate('views/pages/tabs.html.erb')<return>/DeleteThis\\|ChangeText\\|ChangeIcon\\|ChangePath\\|ChangeMarginLeft\\|ChangeLogic<return>
