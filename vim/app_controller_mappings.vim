" App Controllers Base for Template (or Html) controller
nnoremap <silent> ,acbt :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnTemplate controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>cgn<esc>:call IndentTemplate('controllers/base_template.rb')<return>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeInheritance<return>
nmap <silent> ,acbh ,acbt

" Tests Services BAse
nnoremap <silent> ,tsba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActiveSupport::TestCase<esc>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>:call IndentTemplateFrom('inner_followup', 'test/services/base.rb')<return>/DeleteThis\\|ChangeMethod<return>
