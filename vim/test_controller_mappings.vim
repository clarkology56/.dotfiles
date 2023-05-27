" Tests Controller BAse
nnoremap <silent> ,tcba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActionDispatch::IntegrationTest<esc>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>:call TestControllerBase()<return>
function! TestControllerBase()
  execute "normal! /inner_followup\<return>cgninclude FactoryBot::Syntax::Methods\<space>\<backspace>\<return>include ::Devise::Test::IntegrationHelpers\<space>\<backspace>\<return>test disclaimer\<esc>:call TestDisclaimer()\<return>oDeleteThis - add test (,tc??)\<esc>"
  let @/ = "DeleteThis"
endfunction

" Tests Controller Web Show
nnoremap <silent> ,tcws :call IndentTemplate('test/controllers.rb/web/show.rb')<return>/ChangeRoute\\|ChangeFactory\\|DeleteThis\\|ChangeResource<return>




"" Tests Controller AUthorization
"nnoremap <silent> ,tcau :call IndentTemplate('', 0, 0, '../templates/tests/controller_authorization.rb')<return>/DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValue\\|ChangeUrlHelper\\|ChangeObject\\|, ChangeAction\\|ChangeUserWithPermission\\|ChangeInvalidValue<return>
"
"function! TestControllerAuthorization(action)
"  " add comment indicating start of tests for action
"  execute "normal! o# " . a:action . " action params\<return>\<backspace>\<backspace>\<space>\<backspace>"
"  " get details
"  if a:action == ''
"    let a:action = 'ChangeAction'
"  endif
"  if index(['index', 'show'], a:action) >= 0
"    let html_method = 'get'
"  elseif a:action == 'create'
"    let html_method = 'post'
"  elseif a:action == 'update'
"    let html_method = 'patch'
"  elseif a:action == 'destroy'
"    let html_method = 'delete'
"  endif 
"  let url_helper = input("What is the url helper excluding arguments and \"_path\" sufffix? (ex. \"core_user\", not \"core_user_path(@user)\"): ")
"  if url_helper == ''
"    let url_helper = 'ChangeUrlHelper'
"  endif
"  if a:action != 'index'
"    let object_name = input("What is the name of object?: ")
"    if object_name == ''
"      let object_name = 'ChangeObject'
"    endif
"    let object_table = input("What is the name of object's table?: ")
"    if object_table == ''
"      let object_table = 'ChangeTable'
"    endif
"    let object_fixture = input("What is the name of object's fixture?: ")
"    if object_fixture == ''
"      let object_fixture = 'ChangeFixture'
"    endif
"  endif
"  let user_with_permission = input("What is the first role with permision (ex \"hr_admin\"): ")
"  if user_with_permission == ''
"    let user_with_permission = 'ChangeUserWithPermission'
"  endif
"  let has_params = input("Does the " . a:action . " action have params? (y/n): ")
"  let is_ajax = input("Is this an ajax request? (y/n): ")
"  
"  " add params method
"  if has_params == 'y'
"    execute "normal! adef " . a:action . "_params\<return>{ 'ChangeScope' => { 'ChangeAttribute' => 'ChangeValue' } }\<return>end\<return>\<esc>0Do\<space>\<backspace>"
"  endif
"  
"  " start authorization test
"  execute "normal! a# " . a:action . " action authorization test\<return>\<backspace>\<backspace>test 'Should not " . a:action . " without authorization' do"
"  if a:action != 'index'
"    execute "normal! o" . object_name . " = " . object_table . "(:" . object_fixture . ")"
"  endif
"  execute "normal! o# not logged in\<return>\<backspace>\<backspace>\<space>\<backspace>"
"  " make request while not logged in
"  execute "normal! a" . html_method . " " . url_helper . "_path"
"  if a:action != 'index'
"    execute "normal! a(" . object_name . ")"
"  endif
"  if has_params == 'y'
"    execute "normal! a, params: " . a:action . "_params"
"  endif
"  if is_ajax == 'y'
"    execute "normal! a, xhr: true"
"  endif
"  " assert access denied while not logged in
"  execute "normal! oassert assigns(:access_denied_not_logged_in)"
"  " sign in base user
"  execute "normal! o# logged in wihtout access\<return>\<backspace>\<backspace>sign_in(core_users(:base_user))"
"  " make request make request while signed in but without access
"  execute "normal! o" . html_method . " " . url_helper . "_path"
"  if a:action != 'index'
"    execute "normal! a(" . object_name . ")"
"  endif
"  if has_params == 'y'
"    execute "normal! a, params: " . a:action . "_params"
"  endif
"  if is_ajax == 'y'
"    execute "normal! a, xhr: true"
"  endif
"  " assert access denied while logged in
"  execute "normal! oassert assigns(:access_denied_while_logged_in)"
"  " test that user with access cannot access objects for different accounts
"  if index(['show', 'update', 'destroy'], a:action) >= 0
"    " add notes regarding when user with access cannot access
"    execute "normal! o# DeleteThis - Below we test limitations on users that have access\<return>DeleteThis..."
"    execute "normal! oDeleteThis - We start by testing url params that could break rules in ability file\<return>DeleteThis - the most common issue is testing that " . user_with_permission . " cannot ". a:action . " " . object_name . " on different account.\<return>\<backspace>\<backspace>\<space>\<backspace>"
"    " sign in user with access
"    execute "normal! a# Logged in as " . user_with_permission . " but for " . object_name . " on different account\<return>\<backspace>\<backspace>\<space>\<backspace>sign_in(core_users(:" . user_with_permission . "))"
"    " make request while logged in but request object on different account
"    execute "normal! o" . html_method . " " . url_helper . "_path"
"    execute "normal! a(" . object_table . "(:ChangeDifAccountObject))"
"    if has_params == 'y'
"      execute "normal! a, params: " . a:action . "_params"
"    endif
"    if is_ajax == 'y'
"      execute "normal! a, xhr: true"
"    endif
"    " assert access denied while logged in with access but attempting to
"    " access object on different account
"    execute "normal! oassert assigns(:access_denied_while_logged_in)"
"    execute "normal! o# DeleteThis - Repeat above section for any other situation where " . user_with_permission . " cannot ". a:action . " " . object_name . " based on ability file and url params\<return>\<backspace>\<backspace>\<space>\<backspace>"
"  endif
"  " test that params cannot break ability file
"  if has_params == 'y' && index(['create', 'update'], a:action) >= 0
"    " prep
"    let params_could_break_ability = input("Is it possible that any params break rules in ability file? (y/n): ")
"    if params_could_break_ability == 'y'
"      if a:action == 'update'
"        let helper_word = 'to'
"      else 
"        let helper_word = 'for'
"      endif
"      execute "normal! a# DeleteThis...\<return>DeleteThis - Next we test params that could break rules in ability file\<return>DeleteThis - the most common issue is testing that " . user_with_permission . " cannot ". a:action . " " . object_name . " on different account.\<return>\<backspace>\<backspace>\<space>\<backspace>"
"      execute "normal! a# Logged in as " . user_with_permission . " but attempting to " . a:action . " " . object_name . " " . helper_word . " different account\<return>\<backspace>\<backspace>\<space>\<backspace>"
"      execute "normal! ainvalid_" . a:action . "_params = " . a:action . "_params\<return>invalid_" . a:action . "_params['ChangeScope']['ChangeAttribute'] = ChangeInvalidValue"
"      " make request to create or update for antoher account
"      execute "normal! o" . html_method . " " . url_helper . "_path"
"      if a:action != 'index'
"        execute "normal! a(" . object_name . ")"
"      endif
"      if has_params == 'y'
"        execute "normal! a, params: invalid_" . a:action . "_params"
"      endif
"      if is_ajax == 'y'
"        execute "normal! a, xhr: true"
"      endif
"      " assert access denied while logged in with access but attempting to
"      " create or update object for  different account
"      execute "normal! oassert assigns(:access_denied_while_logged_in)"
"      execute "normal! o# DeleteThis - Repeat above section for any other situation where " . user_with_permission . " cannot ". a:action . " " . object_name . " based on ability file and params\<return>\<backspace>\<backspace>\<space>\<backspace>"
"    endif
"  endif
"  execute "normal! a# DeleteThis...\<return>DeleteThis - Repeat above section related to " . user_with_permission . " for all user / roles that have access\<return>\<backspace>\<backspace>end\<esc>o"
"  if a:action == 'index'
"  elseif a:action == 'show'
"  elseif a:action == 'create'
"  elseif a:action == 'update'
"    call TestControllerUpdate(user_with_permission, html_method, url_helper, object_name, object_table, object_fixture, has_params, is_ajax)
"    call TestControllerUpdateInvalid(user_with_permission, html_method, url_helper, object_name, object_table, object_fixture, has_params, is_ajax)
"  elseif a:action == 'destroy'
"  endif 
"  let @/ = "DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValue\\|ChangeUrlHelper\\|ChangeObject\\|ChangeDifAccountObject\\|ChangeTable\\|ChangeFixture\\|ChangeUserWithPermission\\|ChangeInvalidValue\\|ChangeTemplate\\|ChangePath"
"  echo 'Follow instructions in text file to finish'
"endfunction
"
"function! TestControllerUpdate(user_with_permission, html_method, url_helper, object_name, object_table, object_fixture, has_params, is_ajax)
"  execute "normal! o# update action test (valid)\<return>\<backspace>\<backspace>test 'Should update when logged in as " . a:user_with_permission . "' do"
"  execute "normal! o" . a:object_name . " = " . a:object_table . "(:" . a:object_fixture . ")"
"  execute "normal! osign_in(core_users(:" . a:user_with_permission . "))"
"  " make request
"  execute "normal! o" . a:html_method . " " . a:url_helper . "_path"
"  execute "normal! a(" . a:object_name . ")"
"  if a:has_params == 'y'
"    execute "normal! a, params: update_params"
"  endif
"  if a:is_ajax == 'y'
"    execute "normal! a, xhr: true"
"  endif
"  if a:is_ajax != 'y'
"    let response = input("For valid control flow (ie no errors), is the expected response success or redirect? (s/r): ")
"  else
"    let response = 's'
"  endif
"  if response == 's'
"    let response = 'success'
"  else
"    let response = 'redirect'
"  endif
"  execute "normal! oassert_response :" . response
"  if a:is_ajax != 'y'
"    if response == 'success'
"      execute "normal! oassert_template 'ChangeTemplate'"
"    else
"      execute "normal! oassert_redirected_to ChangePath"
"    endif
"  endif
"  let flash_type = input("For valid control flow (ie no errors) what is the flash - success, info, none (s/i/n): ")
"  if flash_type == 's'
"    let flash_type = 'success'
"  elseif flash_type == 'i'
"    let flash_type = 'info'
"  else
"    let flash_type = ''
"  endif
"  if flash_type != ''
"    execute "normal! oassert flash[:" . flash_type . "]"
"  endif
"  execute "normal! o" . a:object_name . ".reload\<return>assert_equal " . a:object_name . ", assigns(:" . a:object_name . ")\<return>assert_equal ChangeValue, " . a:object_name . ".ChangeAttribute\<return># DeleteThis - insert at least one assertions per line of code in control flow\<return>\<backspace>\<backspace>end"
"  call TestControllerUpdateAdditionalUserWithAccess(a:html_method, a:url_helper, a:object_name, a:object_table, a:object_fixture, a:has_params, a:is_ajax)
"endfunction
"
"function! TestControllerUpdateAdditionalUserWithAccess(html_method, url_helper, object_name, object_table, object_fixture, has_params, is_ajax)
"  let user_with_permission = input("Are there any other users / roles with permision? (ex \"hr_doc_manager\" or leave blank if none): ")
"  if user_with_permission != ''
"    execute "normal! o\<esc>o# update test (valid - simplified version for " . user_with_permission . ")\<return>\<backspace>\<backspace>test 'Should updated when logged in as " . user_with_permission . "' do"
"    execute "normal! o" . a:object_name . " = " . a:object_table . "(:" . a:object_fixture . ")"
"    execute "normal! osign_in(core_users(:" . user_with_permission . "))"
"    " make request
"    execute "normal! o" . a:html_method . " " . a:url_helper . "_path"
"    execute "normal! a(" . a:object_name . ")"
"    if a:has_params == 'y'
"      execute "normal! a, params: update_params"
"    endif
"    if a:is_ajax == 'y'
"      execute "normal! a, xhr: true"
"    endif
"    execute "normal! o" . a:object_name . ".reload\<return>assert_equal ChangeValue, " . a:object_name . ".ChangeAttribute\<return>end"
"    call TestControllerUpdateAdditionalUserWithAccess(a:html_method, a:url_helper, a:object_name, a:object_table, a:object_fixture, a:has_params, a:is_ajax)
"  endif
"endfunction
"
"function! TestControllerUpdateInvalid(user_with_permission, html_method, url_helper, object_name, object_table, object_fixture, has_params, is_ajax)
"  execute "normal! o\<esc>\o# DeleteThis - repeat entire invalid test for all invalid control flows (if more than one)\<return>DeleteThis - only test for one " . a:object_name . " error (we are testing control flow, not model validations)\<return>DeleteThis - only test for one user with permision (we are testing control flow, not authorization)\<return>update test (invalid)\<return>\<backspace>\<backspace>test 'Should not update when params are invalid' do"
"  execute "normal! o" . a:object_name . " = " . a:object_table . "(:" . a:object_fixture . ")"
"  execute "normal! osign_in(core_users(:" . a:user_with_permission . "))"
"  execute "normal! oinvalid_update_params = update_params\<return>invalid_update_params['ChangeScope']['ChangeAttribute'] = ChangeInvalidValue"
"  " make request
"  execute "normal! o" . a:html_method . " " . a:url_helper . "_path"
"  execute "normal! a(" . a:object_name . ")"
"  if a:has_params == 'y'
"    execute "normal! a, params: invalid_update_params"
"  endif
"  if a:is_ajax == 'y'
"    execute "normal! a, xhr: true"
"  endif
"  if a:is_ajax != 'y'
"    let response = input("For valid control flow (ie no errors), is the expected response success or redirect? (s/r): ")
"  else
"    let response = 's'
"  endif
"  if response == 's'
"    let response = 'success'
"  else
"    let response = 'redirect'
"  endif
"  execute "normal! oassert_response :" . response
"  if a:is_ajax != 'y'
"    if response == 'success'
"      execute "normal! oassert_template 'ChangeTemplate'"
"    else
"      execute "normal! oassert_redirected_to ChangePath"
"    endif
"  endif
"  let flash_type = input("For invalid control flow (ie no errors) what is the flash - danger or none (d/n): ")
"  if flash_type == 'd'
"    let flash_type = 'danger'
"  else
"    let flash_type = ''
"  endif
"  if flash_type != ''
"    execute "normal! oassert flash[:" . flash_type . "]"
"  endif
"  execute "normal! o" . a:object_name . ".reload\<return>assert_equal " . a:object_name . ", assigns(:" . a:object_name . ")\<return>assert_equal ChangeValue, " . a:object_name . ".ChangeAttribute\<return># DeleteThis - insert at least one assertions per line of code in control flow\<return>\<backspace>\<backspace>end"
"endfunction
"
"
"" Tests Controller Sortable Table positions
"nnoremap <silent> ,tcst :call IndentTemplate('', 1, 0, '../templates/tests/controller_sortable_table_positions.rb')<return>/ChangeUserWithPermission\\|ChangeUser\\|ChangeParent\\|ChangeTable\\|ChangeFixture\\|ChangeChildren\\|ChangeChild\\|ChangeStpId\\|ChangeUrlHelper\\|DeleteThis<return>
"" Tests Controller INdex
"nnoremap <silent> ,tcin :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_index.rb')<return>/included_not_included<return>nD:call TestIncludedNotIncluded()<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeModel\\|ChangeQuery\\|ChangeLoad\\|ChangeDifAccountObject\\|ChangeFilter\\|ChangeTable\\|ChangeFixture\\|ChangeDescription<return>
"" Tests Controller SHow
"nnoremap <silent> ,tcsh :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_show.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
"" Tests Controller NEw
"nnoremap <silent> ,tcne o# DeleteThis - refactor test for show to fit new<return><backspace><backspace><space><backspace><esc>:call IndentTemplate('', 0, 0, '../templates/tests/controller_test_show.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
"" Tests Controller CReate
"nnoremap <silent> ,tccr :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_create.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect\\|ChangeObject\\|ChangeChainToCoreAccountId<return>
"" Tests Controller EDit
"nnoremap <silent> ,tced o# DeleteThis - refactor test for show to fit edit<return><backspace><backspace><space><backspace><esc>:call IndentTemplate('', 0, 0, '../templates/tests/controller_test_show.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
"" Tests Controller UPdate
"nnoremap <silent> ,tcup :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_update.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
"nnoremap <silent> ,tcup :call TestControllerAuthorization('update')<return>
"
"""/DeleteThis\\|ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeValueForDifferentAccount\\|ChangeValue\\|ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeObject\\|, params: ChangeAction_params\\|ChangeUserWithPermission\\|ChangeInvalidValue<return>
"
"
""":call IndentTemplate('', 0, 0, '../templates/tests/controller_test_update.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
"" Tests Controller DEstroy
"nnoremap <silent> ,tcde :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_destroy.rb')<return>/DeleteThis\\|ChangeUserWithPermission\\|ChangeModel\\|ChangePath\\|ChangeObject\\|ChangeValue\\|ChangeAttribute\\|ChangeScope\\|ChangeInvalidValue\\|ChangeTemplate\\|SuccessOrRedirect<return>
"" Tests Controller OTher
"nnoremap <silent> ,tcot :call IndentTemplate('', 0, 0, '../templates/tests/controller_test_other.rb')<return>/DeleteThis\\|ChangeAction\\|SuccessOrRedirect\\|ChangeHtmlMethod\\|ChangeTemplate\\|ChangePath\\|ChangeUserWithPermission\\|ChangeUrlHelper\\|ChangeObject\\|ChangeModel\\|ChangeLoad<return>
"" Tests Controller REquest
"nnoremap <silent> ,tcre  aChangeHtmlMethod ChangeUrlHelper_path(id: @ChangeObject.id),<return>params: ChangeAction_params,<return>headers{ ChangeHeaders },<return>xhr: true<esc>/ChangeHtmlMethod\\|ChangeUrlHelper\\|(id: @ChangeObject.id)\\|,<return>params: ChangeAction_params\\|,<return>headers{ ChangeHeaders }\\|,<return>xhr: true<return>
"" Tests Controller GEt (index)
"nnoremap <silent> ,tcge aget ChangeUrlHelper_path<esc>/ChangeUrlHelper<return>
"" Tests Controller GEt full (show or new or edit)
"nnoremap <silent> ,tcgE aget ChangeUrlHelper_path(id: @ChangeModel.id)<esc>/ChangeUrlHelper\\|ChangeModel<return>
"" Tests Controller POst
"nnoremap <silent> ,tcpo apost ChangeUrlHelper_path, params: ChangeAction_params<esc>/ChangeUrlHelper\\|ChangeAction<return>
"" Tests Controller PAtch
"nnoremap <silent> ,tcpa apatch ChangeUrlHelper_path(ChangeModel), params: ChangeAction_params<esc>/ChangeUrlHelper\\|ChangeModel\\|ChangeAction<return>
"" Tests Controller PAtch (full)
"nnoremap <silent> ,tcpA apatch ChangeUrlHelper_path(ChangeModel),<return>params: ChangeAction_params,<return.headers{ ChangeHeaders },<return>env: ChangeEnvironment,<return>xhr: true,<return>as: :json<esc>/ChangeHtmlMethod\\|ChangeUrlHelper\\|ChangeAction\\|ChangeHeaders\\|ChangeEnvironment\\|:json<return>
"" Tests Controller DElete
"nnoremap <silent> ,tcdE adelete ChangeUrlHelper_path(ChangeModel)<esc>/ChangeUrlHelper\\|ChangeModel<return>
