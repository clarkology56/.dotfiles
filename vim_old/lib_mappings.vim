" Lib Tasks
  " Lib Tasks BAse
  nnoremap <silent> ,ltba :call ReadTemplate('tasks/base.rake')<return>ggdd/insert first task<return>dd<up>:call LibTasksTaskBase()<return>:call LibTaskSearch()<return>
  " Lib Tasks Task Base
  nnoremap <silent> ,lttb :call LibTasksTaskBase()<return>:call LibTaskSearch()<return>
  function! LibTasksTaskBase()
    call ReadTemplate('tasks/task_base.rake')
  endfunction
  function! LibTaskSearch()
    let @/ = "ChangeApp\\|ChangeTaskType\\|ChangeCategory\\|ChangeDescription\\|ChangeTaskName\\|ChangeTask1\\|ChangeTask2\\|ChangeTask3\\|DeleteThis\\|ChangeMessage"
  endfunction
  " Lib Tasks Date Helper
  nnoremap <silent> ,ltdh :read ../templates/tasks/date_helper.rake<return>/DeleteThis<return>
  " Lib Tasks Repeat  Helper
  nnoremap <silent> ,ltrb :read ../templates/tasks/repeat_block.rake<return>/DeleteThis<return>
  
" Lib Loader
  " Lib Loader BAse
  nnoremap <silent> ,llba :call CreateBaseFile(1, 0, 1)<return>:call IndentTemplate('inner_followup', 1, 0, '../templates/lib/loaders/base.rb')<return>/ChangeTopLevelDocumentation<return><down>$viwy/ChangeTopLevelDocumentation<return>viwp5<left>6xbiLoader for <esc>AController<esc>:call LibLoaderBaseChangeFirstAction()<return>/DeleteThis\\|ChangeAction<return>
  function LibLoaderBaseChangeFirstAction()
    let @/ = 'ChangeFirstLoader'
    let controller_name = expand('%')
    let controller_name = substitute(controller_name, 'lib/loaders/', '', '')
    let controller_name = substitute(controller_name, '.rb', '', '')
    let controller_name = substitute(controller_name, '/', '_', 'g')
    let controller_name = substitute(controller_name, '_loader', '', 'g')
    execute "normal! cgn" . controller_name
  endfunction
  " Lib Loader Base with Filters
  nnoremap <silent> ,llbf :call CreateBaseFile(0, 0, 1)<return>:call IndentTemplate('inner_followup', 1, 0, '../templates/lib/loaders/base_with_filters.rb')<return>/ChangeTopLevelDocumentation<return><down>$viwy/ChangeTopLevelDocumentation<return>viwp5<left>6xbiLoader for <esc>AController<esc>:call LibLoaderBaseChangeFirstAction()<return>/DeleteThis\\|ChangeAction\\|DeleteThis\\|ChangeMainLoad\\|AddAuxLoadOrDelete\\|ChangeClass\\|ChangeAbility\\|ChangeWhereScopes\\|ChangeOrderScopes\\|ChangeFilter\\|ChangeQueryScope\\|ChangeDisplay\\|ChangeScope\\|ChangeScopeArg<return>
