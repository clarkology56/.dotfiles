" App Controllers Base for Parent controller
nnoremap <silent> ,acbp :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnParent controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>cgn<esc>:call IndentTemplate('controllers/base_parent.rb')<return>/ChangeDescription\\|DeleteThis\\|ChangeInheritance<return>
" App Controllers Base for Child controller
nnoremap <silent> ,acbc :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnChild controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>cgn<esc>:call IndentTemplate('controllers/base_child.rb')<return>/ChangeDescription\\|DeleteThis\\|ChangeInheritance<return>

" Tests Services BAse
nnoremap <silent> ,tsba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActiveSupport::TestCase<esc>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>:call IndentTemplateFrom('inner_followup', 'test/services/base.rb')<return>/DeleteThis\\|ChangeMethod<return>
