" Html Modal FOrm
nnoremap <silent> ,hmfo :call IndentTemplate('views/modals/form_modal.html.erb')<return>/ChangeModel\\|ChangeActionOrDescription\\|ChangeHeader\\|ChangePath\\|ChangeHtmlMethod\\|ChangeSubmitToAddForNewOrSaveForUpdate<return>
nnoremap <silent> ,hmde :call IndentTemplate('views/modals/destroy_modal.html.erb')<return>/ChangeModelDisplay\\|ChangeModel\\|ChangeActionOrDescription\\|ChangePath\\|ChangeSubmitToAddForNewOrSaveForUpdate<return>
nnoremap <silent> ,hmin :call IndentTemplate('views/modals/info_modal.html.erb')<return>/ChangeModel\\|ChangeActionOrDescription\\|ChangeHeader\\|ChangeInfo<return>
