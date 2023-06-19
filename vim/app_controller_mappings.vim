" App Controllers Base for Parent controller
nnoremap <silent> ,acbp :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnParent controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>cgn<esc>:call IndentTemplate('controllers/base_parent.rb')<return>/ChangeDescription\\|DeleteThis\\|ChangeInheritance<return>
" App Controllers Base for Child controller
nnoremap <silent> ,acbc :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnCollectionMemborOrChild controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>cgn<esc>:call IndentTemplate('controllers/base_child.rb')<return>/ChangeDescription\\|DeleteThis\\|ChangeInheritance\\|CollectionMemborOrChild<return>

" App Controllers Broadcast Update
nnoremap <silent> ,acbu :call IndentTemplate('controllers/broadcast_update.rb')<return>/ChangeModelDisplay\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangeControllerName<return>

