" App Controllers Base for Parent controller
nnoremap <silent> ,acbp :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnParent controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>cgn<esc>:call IndentTemplate('controllers/base_parent.rb')<return>/ChangeDescription\\|DeleteThis\\|ChangeInheritance<return>
" App Controllers Base for Child controller
nnoremap <silent> ,acbc :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnCollectionMemborOrChild controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>cgn<esc>:call IndentTemplate('controllers/base_child.rb')<return>/ChangeDescription\\|DeleteThis\\|ChangeInheritance\\|CollectionMemborOrChild<return>
" App Controllers Base Broadcasts file
nnoremap <silent> ,acbb :call CreateBaseFile(0, 0, 0)<return>/ChangeTopLevelDocumentation<return>cgnBroadcasts for<esc><up>g_viwy<down>A <esc>pa controller<esc>

" App Controllers Broadcast Update
nnoremap <silent> ,acbu :call IndentTemplate('controllers/broadcast_update.rb')<return>/ChangeModelDisplay\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangeControllerName<return>
" App Controllers Turboframe Update
nnoremap <silent> ,actu :call IndentTemplate('controllers/turboframe_update.rb')<return>/ChangeModelDisplay\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangePath<return>

" App Controllers Broadcast Actions
nnoremap <silent> ,acba :call IndentTemplate('controllers/broadcast_actions.rb')<return>/DeleteThis\\|ChangeDescription\\|ChangeArgs\\|ChangeTurboAction\\|ChangeTemplate\\|ChangeResource\\|ChangeHmtlId\\|ChangePartialPath<return>
" App Controllers Broadcast Remove
nnoremap <silent> ,acba :call IndentTemplate('controllers/broadcast_remove.rb')<return>/DeleteThis\\|ChangeDescription\\|ChangeArgs\\|ChangeTemplate\\|ChangeResource\\|ChangeHmtlId<return>
