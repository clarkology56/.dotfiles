" Miscellaneous Messages Test
function! TestDisclaimer()
  exe "normal! a# DeleteThis - do not test things that can easily change (ie text in source code)\<return>DeleteThis - do not test things so that if one thing is changed in source code many tests will break"
endfunction

"" Test Run
"  " File Test Current File in terminal
"  nnoremap <silent> ,trcf :call FileTestCurrentFile(1)<return>:call ToggleTerminalInWindow()<return>q<return><C-c><C-\><C-n>pa<return>
"  " File Test Current File
"  nnoremap <silent> ,trcF :call FileTestCurrentFile(0)<return>
"  " File Test All Files in terminal
"  nnoremap <silent> ,traF :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>rails t<return>
"  " File Test All Files
"  nnoremap <silent> ,traf :wa<return>:! rails t<return>
  
" Test Base
  " Tests Base Test Base
  nnoremap <silent> ,tbtb atest 'Should ChangeThisPls when ChangeThisPls' do<return>end<esc>/ChangeThisPls<return>
  " Tests Base Test Method
  nnoremap <silent> ,tbtm atest 'method ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
  " Tests Base Perform enqueued Jobs
  nnoremap <silent> ,tbpj aperform_enqueued_jobs<esc>
  " Tests Base FIxtures
  nnoremap <silent> ,tbfi @ChangeObject = ChangeTable(:ChangeFixture)<esc>/ChangeObject\\|ChangeTable\\|ChangeFixture<return>
  " Tests Fixtures Attach File
  nnoremap <silent> ,tbff :call TestBaseFixtureFile()<return>/ChangeVariable\\|ChangePathAndExtension\\|ChangeContentType\\|DeleteThis<return>
  function! TestBaseFixtureFile()
    execute "normal! aChangeVariable = Rack::Test::UploadedFile.new(Rails.root.join('test', 'fixtures', 'files', 'ChangePathAndExtension'), 'ChangeContentType')\<return># DeleteThis - common file type and subtypes:\<return>  application/pdf\<return>image/png image/gif image/jpeg\<return>video/mov video/mp4\<return>audio/mpeg audio/wave\<return>text/plain text/csv text/html\<return>see here for more examples: https://developer.mozilla.org/en-US/docs/Web/HTTP/Basics_of_HTTP/MIME_types"
  endfunction

" Tests Assert
  " Tests Assert Enqueued Emails
  nnoremap <silent> ,taee aassert_equal ChangeCount, enqueued_emails('ChangeMailerAndEmail').size<esc>/ChangeCount\\|ChangeMailerAndEmail<return>
  " Tests Assert No enqueued Emails
  nnoremap <silent> ,tane aassert_no_enqueued_emails<esc>
  nnoremap <silent> ,tanE aassert_empty enqueued_emails('ChangeMailerAndEmail')<esc>/ChangeMailerAndEmail<return>
  " Tests Assert Enqueued Jobs
  nnoremap <silent> ,taej aassert_enqueued_jobs ChangeCount, only: ::ChangeJob<esc>/ChangeCount\\|ChangeJob<return>
  " Tests Assert No enqueued Jobs
  nnoremap <silent> ,tanj aassert_no_enqueued_jobs
  nnoremap <silent> ,tanJ aassert_no_enqueued_jobs only: ::ChangeJob<esc>/ChangeJob<return>
  " common assertions
  nnoremap <silent> ,tadi aassert_difference 'ChangeCountable', ChangeDifference do<return>end<esc>/ChangeCountable\\|ChangeDifference<return>
  nnoremap <silent> ,taeq aassert_equal ChangeExpected, ChangeActual<esc>/ChangeExpected\\|ChangeActual<return>
  nnoremap <silent> ,tani aassert_nil ChangeThis<esc>/ChangeThis<return>
  nnoremap <silent> ,tann aassert_not_nil ChangeThis<esc>/ChangeThis<return>

" Helper
  " Tests Helper BAse
  "nnoremap <silent> ,thba :read ../templates/tests/helper_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture<return>
nnoremap <silent> ,thba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionView::TestCase<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/tests/helper_base.rb')<return>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>gg/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeHelper\\|ChangeObject\\|ChangeTable\\|ChangeFixture<return>

" Integration
  " Tests Integration BAse
  nnoremap <silent> ,tiba :read ../templates/tests/integration_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|change_model_name\\|ChangeFixture\\|DeleteThis<return>

" Jobs
  " Tests Job BAse
  nnoremap <silent> ,tjba :read ../templates/tests/job_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|ChangeObject\\|ChangeTableName\\|ChangeFixtureName<return>
  nnoremap <silent> ,tjtb :read ../templates/tests/job_test_base.rb<return>/ChangeDescription\\|ChangeJobName\\|DeleteThis\\|ChangeJob\\|ChangeArgs\\|ChangeObject<return>

" Mailers
  " Tests Mailer BAse
  nnoremap <silent> ,tMba :call ReadTemplate('tests/mailer_base.rb')<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|add mailer test<return>dd<up>,tatb/ChangeThisPls\\|ChangeThis\\|ChangeObject\\|change_model_name\\|ChangeFixture\\|ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>
  
  nnoremap <silent> ,tMba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionMailer::TestCase<esc>:call IndentTemplate2('inner_followup', 'tests/mailer_base.rb')<return>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn model<esc>gg/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/DeleteThis\\|ChangeThisPls\\|ChangePermission\\|ChangeUserWithPermission\\|change_model_name\\|ChangeModel<return>
  
  
  " Tests Mailer Test Base
  nnoremap <silent> ,tMtb :read ../templates/tests/mailer_test_base.rb<return>/ChangeEmail\\|ChangeThis\\|DeleteThis\\|ChangeSubject\\|ChangeMailTo\\|ChangeMailFrom\\|ChangeSomeContent<return>

" Test Tasks
  " Test Tasks Base
  nnoremap <silent> ,tTba :read ../templates/tests/task_base.rb<return>ggdd/ChangePathAndFileName<return>:call FileCopyCurrentFile()<return>viwp/test disclaimer<return>cgn<esc>:call TestDisclaimer()<return>/ChangeThisPls\\|ChangeTestType\\|ChangeFile\\|ChangeExpectedAction\\|ChangeTaskName\\|DeleteThis\\|ChangeApplicationName<return>
  
" Test Lib files
  " Test Lib files BAse
  nnoremap <silent> ,tlba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionDispatch::IntegrationTest<esc>/inner_followup<return>cgn<esc>:call TestDisclaimer()<return><esc>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>$xxxx/ChangeObject\\|ChangeTable\\|ChangeFixture\\|DeleteThis<return>
" Test Services
  " Test Services BAse
  nmap <silent> ,tsba ,tlba
  
