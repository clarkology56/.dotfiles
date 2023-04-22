" App Controllers Base for Template (or Html) controller
nnoremap <silent> ,acbt :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnTemplate controller for ChangeDescription<esc>/class<return>A < ChangeInheritance<esc>/inner_followup<return>C# DeleteThis - use this if all actions require user to be logged in. Otherewise, remove<return><backspace><backspace>before_action :require_current_user<return># DeleteThis - add helpers if necessary. Usually at first there are none so delete this line. But<return>add back later if / when helpers are needed. Default helper for controller included automatically<return><backspace><backspace>include_helpers ChangeHelpers<return><return># DeleteThis - insert actions<esc>/ChangeThisPls\\|ChangeDescription\\|DeleteThis\\|ChangeHelpers\\|ChangeInheritance<return>
nmap <silent> ,acbh ,acbt

" Tests Services BAse
nnoremap <silent> ,tsba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActiveSupport::TestCase<esc>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn<esc>:call IndentTemplate('inner_followup', 'test/services/base.rb')<return>:call TestDisclaimer()<return>/DeleteThis\\|ChangeMethod<return>

"" App Controller mappings
"  nmap <silent> ,acbh ,acbt
"  " App Controllers Base for Ajax controller
"  nnoremap <silent> ,acba :call CreateBaseFile(1, 0, 1)<return>/ChangeTopLevelDocumentation<return>cgnAjax controller for ChangeDescription<esc>/class<return>A < ApplicationController<esc>/inner_followup<return>C# DeleteThis - use this if all actions require user to be logged in. Otherewise, remove<return><backspace><backspace>before_action :require_current_user<return># DeleteThis - make sure parent controller is correct<return><backspace><backspace>include_helpers(*ChangeParentController.included_helpers)<return><return># DeleteThis - insert actions<esc>:call AddParentController()<return>/ChangeThisPls\\|ChangeDescription\\|DeleteThis<return>
"  function! AddParentController()
"    let file = expand('%')
"    let directories = split(file, '/')
"    " remove 'app', 'controllers' and current controller
"    call remove(directories, 0)
"    call remove(directories, 0)
"    call remove(directories, -1)
"    let parentController = []
"    for directory in directories
"      let camel = ''
"      for word in split(directory, '_' )
"        let camel = camel . substitute(word, "\\<.", "\\u&", '')
"      endfor
"      call add(parentController, camel)
"    endfor
"    execute "normal! /ChangeParentController\<return>cgn" . join(parentController, '::') . "Controller"
"  endfunction
"  " App Controllers Index Base
"  nnoremap <silent> ,acib adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return># Deletethis - if index loads need to be shared with another controller (ie an ajax controller):<return><tab>create a service for this controller named "index_loads_service.rb" and add a base module (,rbmo)<return>add a method called <esc>:call ControllerSnakeName()<return>a_index_loads<return>include the module and the method in any other controller as needed<return><backspace><backspace><backspace>@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).ChangeScopes.ChangeSort)<return>end<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility\\|ChangeControllerOrFeature\\|DeleteThis\\|ChangeScopes\\|ChangeSort<return>
"  function ControllerSnakeName()
"    let snake_name = expand('%')
"    let snake_name = substitute(snake_name, 'app/controllers/', '', '')
"    let snake_name = substitute(snake_name, '_controller.rb', '', '')
"    let snake_name = substitute(snake_name, '/', '_', 'g')
"    execute "normal! a" . snake_name
"  endfunction
"  " App Controllers Index with Filters
"  nnoremap <silent> ,acif adef index<return>authorize!(:ChangeAbility, :ChangeControllerOrFeature)<return>index_loads<return>end<return><return># DeleteThis - move this method to private<return><backspace><backspace>def index_loads(options = { filters_only: false })<return>@filter_helper = FilterHelpers::ChangePathToFilterHelper.new(params, current_ability, current_user)<return>@pagy, @ChangeLoads = pagy(@filter_helper.loads) unless options[:filters_only]<return>end<esc>/ChangeAbility\\|ChangeControllerOrFeature\\|ChangeLoads\\|DeleteThis\\|ChangePathTo<return>
"  " App Controllers Show Base
"  nnoremap <silent> ,acsb :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_base.rb')<return>:call AppControllerShowSearch()<return>
"  function! AppControllerShowSearch()
"    let @/ = "ChangeAbility\\|ChangeLoad\\|ChangeModel\\|DeleteThis"
"    normal! n
"  endfunction
"  " App Controllers Show Tab Router
"  nnoremap <silent> ,acsr :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_router.rb')<return>/ChangeLoad\\|ChangeModel\\|ChangeUrl\\|DeleteThis\\|ChangeAbility<return>
"  " App Controllers New Base
"  nnoremap <silent> ,acnb :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_base.rb')<return>/show<return>cgnnew<esc>:call AppControllerShowSearch()<return>
"  " App Controllers Create Ajax
"  nnoremap <silent> ,acca :call IndentTemplate('', 1, 0, '../templates/controllers/actions/create_ajax.rb')<return>/ChangeLoad\\|ChangeModel\\|ChangeObject\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeUrlHelper\\|ChangeTemplate<return>
"  " App Controllers Create Html
"  nnoremap <silent> ,acch :call IndentTemplate('', 1, 0, '../templates/controllers/actions/create_html.rb')<return>/ChangeLoad\\|ChangeModel\\|ChangeAttributes\\|DeleteThis\\|ChangeAbility\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
"  " App Controllers Edit Base
"  nnoremap <silent> ,aceb :call IndentTemplate('', 1, 0, '../templates/controllers/actions/show_base.rb')<return>/show<return>cgnedit<esc>:call AppControllerShowSearch()<return>
"  " App Controllers Update Ajax
"  nnoremap <silent> ,acua :call IndentTemplate('', 1, 0, '../templates/controllers/actions/update_ajax.rb')<return>:call AppControllerUpdateSearch()<return>
"  function! AppControllerUpdateSearch()
"    let @/ = "ChangeLoad\\|ChangeModel\\|ChangeAbility\\|DeleteThis\\|ChangeUrl\\|ChangeTemplate"
"    normal! n
"  endfunction
"  " App Controllers Update Html
"  nnoremap <silent> ,acuh :call IndentTemplate('', 1, 0, '../templates/controllers/actions/update_html.rb')<return>:call AppControllerUpdateSearch()<return>
"  " App Controllers Destroy Ajax
"  nnoremap <silent> ,acda :call IndentTemplate('', 1, 0, '../templates/controllers/actions/destroy_ajax.rb')<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
"  " App Controllers Destroy Html
"  nnoremap <silent> ,acdh :call IndentTemplate('', 1, 0, ' ../templates/controllers/actions/destroy_html.rb')<return>/ChangeLoad\\|ChangeAbility\\|ChangeObject\\|ChangeModel\\|ChangeUrlHelper\\|ChangeTemplate\\|DeleteThis<return>
"  " App Controller Strong Params
"  nnoremap <silent> ,acsp adef ChangeAction_params<return>params.require('ChangeScope').permit(:ChangeAttributes)<return>end<esc>/ChangeAction\\|ChangeScope\\|ChangeAttributes<return>
"  " App Controller Strong params for Fields_for
"  nnoremap <silent> ,acsf adef ChangeAction_ChangeFieldsForScope_params<return>params.require('ChangeScope').require('ChangeFieldsForScope').permit(:ChangeAttributes)<return>end<esc>/ChangeAction\\|ChangeScope\\|ChangeFieldsForScope\\|ChangeAttributes<return>
"  " App Controller Strong params with Enum
"  nnoremap <silent> ,acse adef ChangeAction_params<return>ChangeAction_params = params.require('ChangeScope').permit(:ChangeAttributes)<return>ChangeAction_params[:ChangeEnum] = ChangeAction_params[:ChangeEnum].to_i<return>ChangeAction_params<return>end<esc>/ChangeAction\\|ChangeScope\\|ChangeAttributes\\|ChangeEnum<return>
"  " App Controller Strong params select Multiple
"  nnoremap <silent> ,acsm adef ChangeArray_ids<return># DeleteThis - if no items are selected, params for scope might not be not sent so safe navigation must be used<return>DeleteThis - add "&.[](ChangeFieldsForScope)" if any fields_for levels are used<return><backspace><backspace>params['ChangeScope']&.[]('ChangeArray_ids') \|\| []<return>end<esc>/ChangeArray\\|DeleteThis\\|ChangeFieldsForScope\\|ChangeScope<return>
"  " App Controller Strong params with Logic
"  nnoremap <silent> ,acsl adef ChangeAction_params<return>ChangeAction_params = params.require('ChangeScope').permit(:ChangeAttributes)<return>ChangeAction_params # insert logic to restrict or clean params<return>ChangeAction_params<return>end<esc>/ChangeAction\\|ChangeScope\\|ChangeAttributes<return>
"  " App Controller Strong Params full
"  nnoremap <silent> ,acsP adef ChangeAction_params<return>params.require('ChangeScope').permit(:ChangeAttribute,<return>ChangeArrayAttribute: [],<return>ChangeChildName: [:ChangeAttribute],<return>ChangeChildrenName: [ChangeChildName: [:ChangeAttribute]])<return>end<esc>/ChangeAction\\|ChangeScope\\|ChangeAttribute\\|ChangeArrayAttribute\\|ChangeChildrenName\\|ChangeChildName<return>
"  " App Controller Cancancan authorize Model based
"  nnoremap <silent> ,accm aauthorize!(:ChangeAbility, @ChangeObject)<esc>/ChangeAbility\\|ChangeObject<return>
"  " App Controller Cancancan authorize Non-model based (feature specific)
"  nnoremap <silent> ,accn aauthorize!(:ChangeAbility, :ChangeControllerOrFeature)<esc>/ChangeAbility\\|ChangeControllerOrFeature<return>
"  " App Controller Accessible By
"  nnoremap <silent> ,acab aaccessible_by(current_ability, :ChangeAbility)<esc>/ChangeAbility<enter>
"  " App Controller Accessible By full
"  nnoremap <silent> ,acaB a@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeAbility).search(params[:ChangeLoads_search]).index_scope)<esc>/ChangeLoads\\|ChangeModel\\|ChangeAbility<enter>
"  " App Controllers FLash
"  nnoremap <silent> ,acfl aflash[:ChangeFlashType] = ChangeMessage<esc>/ChangeFlashType\\|ChangeMessage<return>
"  " App Controllers Flash Success
"  nnoremap <silent> ,acfs aflash[:success] = ChangeMessage<esc>/ChangeMessage<return>
"  " App Controllers Flash Info
"  nnoremap <silent> ,acfi aflash[:info] = ChangeMessage<esc>/ChangeMessage<return>
"  " App Controllers Flash Danger
"  nnoremap <silent> ,acfd aflash[:danger] = ChangeMessage<esc>/ChangeMessage<return>
"  " App Controllers Flash Danger
"  nnoremap <silent> ,acfD aflash[:danger] = "ChangeMessage because of the following errors: #{ChangeObject.errors.map { \|error\| error.message[0].capitalize + error.message[1..] }.join('; ')}."<esc>/ChangeMessage\\|ChangeObject<return>
"  " App Controller REnder
"  nnoremap <silent> ,acre arender 'ChangeTemplate'<esc>/ChangeTemplate<return>
"  " App Controller Redirect To
"  nnoremap <silent> ,acrt aredirect_to Change_url<esc>/Change_url<return>
"  " App Controller Respond To
"  nnoremap <silent> ,acrT arespond_to do \|format\|<return>format.html<return>format.js<return>end<esc>
"  " App Controller Include Helpers
"  nnoremap <silent> ,acih ainclude_helpers ChangeHelpers<esc>/ChangeHelpers<return>
"
