"  View Page
  " View Page BAse
  nnoremap <silent> ,vpba a<%# DeleteThis - insert stylesheets, javascript packs, non-pack javascripts and content for end of body and nav type here as needed %><return><return><%# Page header %><return><div id="page_header_container"><return><%= render('ChangePath/ChangeTemplate_header') %><return></div><return><return><%# DeleteThis - insert page body %><esc>/DeleteThis\\|ChangeTemplate\\|ChangePath<return>
  " View Page Header Base
  nnoremap <silent> ,vphb a<%# Page Header - base %><return><div class="page-header"> <return><div class="row"><return><div class="col-12 d-flex flex-wrap"><return><div class="mr-auto"><return><%# Page Title %><return><h2 class="page-head-title mr-2"><return>ChangeTitle<return></h2><return><%# DeleteThis - delete entire breadcrumb if not used %><return><%# Breadcumb %><return><nav aria-label="breadcrumb" role="navigation" style="line-height: 6px;"><return><ol class="breadcrumb page-head-nav" style="padding: 3px 0px; margin: 0px 0px 7px 0px; background-color: #eeeeee;"><return><li class="breadcrumb-item"><%= link_to(ChangeDisplay, ChangePathHelper_path) %></li><return></ol><return></nav><return></div><return><%# Page header buttons %><return><div class="d-flex align-items-center flex-wrap"><return><%# NOTE: if multiple buttons, all buttons EXCEPT FOR THE LAST BUTTON need a class of mr-2 %><return></div><return></div><return></div><return></div><esc>/ChangeTitle\\|ChangeDisplay\\|ChangePathHelper\\|DeleteThis<return>
  " View Page Tabs Container
  nnoremap <silent> ,vptc a<%# Page tabs %><return><div id="page_tabs_container"><return><%= render('ChangePath/ChangeTemplate_tabs', tab: @tab) %><return></div><esc>/ChangePath\\|ChangeTemplate<return>
  " View Page Tabs Base
  nnoremap <silent> ,vptb :read ../templates/views/page/tabs_base.html.erb<return>ggdd/ChangeThisPls\\|ChangeDisplay\\|ChangePathHelper<return>
  " View Page Body Base
  nnoremap <silent> ,vpbb :read ../templates/views/page/body_base.html.erb<return>/DeleteThis<return>
  " View Page Body Stacked tabs
  nnoremap <silent> ,vpbs :read ../templates/views/page/body_stacked_tabs.html.erb<return>/ChangePath\\|ChangeTemplate\\|DeleteThis\\|ChangeObject<return>
  " View Page Stacked tabs Helper
  nnoremap <silent> ,vpsh :call CreateBaseFile(0, 0, 1)<return>/ChangeTopLevelDocumentation<return><up>$viwy/ChangeTopLevelDocumentation<return>viwpbiHelper methods for <esc>A tabs<esc>:call IndentTemplate('inner_followup', 1, 0, '../templates/views/page/stacked_tabs_helper.rb')<return>/DeleteThis\\|ChangeSection\\|ChangeObject\\|ChangeUrl\\|DeleteThis\\|ChangeActiveId\\|ChangeDisplay<return>
  " View Page Stacked tabs Mobile
  nnoremap <silent> ,vpsm :read ../templates/views/page/stacked_tabs_mobile.html.erb<return>/ChangePath\\|ChangeTemplate\\|DeleteThis\\|ChangeObject<return>
  " View Page Stacked Tabs
  nnoremap <silent> ,vpst :read ../templates/views/page/stacked_tabs.html.erb<return>/ChangeWidth\\|ChangeObject<return>
  " View Page Body Full height columns
  nnoremap <silent> ,vpbf :read ../templates/views/page/body_full_height_columns.html.erb<return>/ChangeTemplate\\|ChangeColumnName\\|ChangeWidth\\|DeleteThis\\|ChangePath\\|ChangeMinScreenSize<return>
  " View Page STylesheets
  nnoremap <silent> ,vpss a<%= content_for :stylesheets do %><return><%# DeleteThis - use this for custom stylesheet for this file (or delete it if not necessary) %><return><space><backspace><esc>:call AddCustomStyleSheetForFile()<return>a<return><%# DeleteThis - use this for any other stylesheet (or delete it if not necessary) %><return><%= stylesheet_link_tag('ChangePath') %><return><% end %><esc>/DeleteThis\\|ChangePath<return>
  function! AddCustomStyleSheetForFile()
    let file = expand('%')
    let file = substitute(file, 'app/views/', '', '')
    let file = substitute(file, '.html.erb', '', '')
    execute "normal! a<%= stylesheet_link_tag('" . file . "') %>"
  endfunction
  " View Page Javascript Packs
  nnoremap <silent> ,vpjp a<%# DeleteThis - can include one or multiple packs as arguments %><return><% add_javascript_packs('<esc>:call AddCustomJavascroptPackForFile()<return>a', 'ChangePath') %><esc>n
  function! AddCustomJavascroptPackForFile()
    let file = expand('%')
    let file = substitute(file, 'app/views/', '', '')
    let file = substitute(file, '.html.erb', '', '')
    execute "normal! a" . file
    let @/ = "'" . file . "',\\|DeleteThis\\|'ChangePath'"
  endfunction
  " View Page  Non Pack javascriopts
  nnoremap <silent> ,vpnp :read ../templates/views/page/non_pack_javascripts.html.erb<return>/ChangePath<return>
  " View Page End of Body
  nnoremap <silent> ,vpeb :read ../templates/views/page/end_of_body.html.erb<return>/DeleteThisNote<return>
  " View Page Nav type Full height columns
  nnoremap <silent> ,vpnf a<% provide(:nav_type, 'full_height_columns') %><esc> 
  " View Page Nav type Custom
  nnoremap <silent> ,vpnc a<% provide(:nav_type, 'custom') %><esc> 

" View Columns
  " View Columns BAse
  " nnoremap <silent> ,vcba

" View Card
  " View Card Container Element
  nnoremap <silent> ,vcce o<%# ChangeCardName card %><return><div id="ChangeCardName_card_container"><return><%= render('ChangePath/ChangeTemplate_ChangeCardName_card') %><return></div><esc>/ChangeCardName\\|ChangePath\\|ChangeTemplate<return>
  " View Card Contents Base
  nnoremap <silent> ,vccb :read ../templates/views/card/contents_base.html.erb<return>ggdd/DeleteThis<return>
  " View Card Contents WIde
  nnoremap <silent> ,vccw :read ../templates/views/card/contents_wide.html.erb<return>ggdd/DeleteThis<return>
  " View Card Contents Full
  nnoremap <silent> ,vccf :read ../templates/views/card/contents_full.html.erb<return>ggdd/DeleteThis<return>
  " View Card Contents Non-Card
  nnoremap <silent> ,vccn :read ../templates/views/card/contents_non_card.html.erb<return>ggdd/DeleteThis<return>
  " View Card Header Base
  nnoremap <silent> ,vchb :read ../templates/views/card/header_base.html.erb<return>/ChangeThisPls<return>
  " View Card Body Single show
  nnoremap <silent> ,vcbs :read ../templates/views/card/body_single_show.html.erb<return>/ChangeThisPls<return>
  " View Card Body Table Base
  nnoremap <silent> ,vcbt :call IndentTemplate('', 0, 0, '../templates/views/card/body_table_base.html.erb')<return>/DeleteThis<return>
  " View Card Body Query (ie search) for table
  nnoremap <silent> ,vcbq :call IndentTemplate('', 0, 0, '../templates/views/card/body_search_for_table.html.erb')<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan<return>
  " View Card Body Filters for table
  nnoremap <silent> ,vcbf :call IndentTemplate('', 0, 0, '../templates/views/card/body_filters_for_table.html.erb')<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|DeleteThis\\|ChangeFilterButtonId\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan<return>
  " View Card Body actual Table
  nnoremap <silent> ,vcbT :call IndentTemplate('', 0, 0, '../templates/views/card/body_actual_table.html.erb')<return>/ChangeObjects\\|ChangeObject\\|ChangePath\\|DeleteThis\\|ChangeFilter\\|ChangeAttributes\\|ChangeModels\\|ChangeWidth\\|ChangeColumn\\|ChangeColSpan\\|ChangeModalId\\|ChangeModal<return>
  " View Card Body sortable table Positions
  nmap <silent> ,vcbp ,pstv
  " View Card Body table row for no objects
  nnoremap <silent> ,vcbn :call IndentTemplate('', 0, 0, '../templates/views/card/body_no_objects.html.erb')<return>/DeleteThis\\|ChangeObjects\\|ChangeModalId\\|ChangePath\\|ChangeTemplate\\|ChangeModal\\|ChangeLinkToCreate<return>
  

" View Modals
  " View Mdoels Info Modal and button
  nmap <silent> ,vmim :read ../templates/views/modals/info_modal_and_button.html.erb<return>/ChangeModalId\\|ChangeTitle\\|ChangeContent<return>
  " View Models BAse
  nnoremap <silent> ,vmba :read ../templates/views/modals/base.html.erb<return>ggdd/DeleteThis<return>
  " View Models Contents Base
  nnoremap <silent> ,vmcb :read ../templates/views/modals/contents_base.html.erb<return>/DeleteThis\\|OK<return>
  " View Models Contents Destroy
  nnoremap <silent> ,vmcd :read ../templates/views/modals/contents_destroy.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeAttribute\\|ChangeName\\|ChangeUrl\\|SetToTrueOrRemove<return>
  " View Models Contents Image
  nnoremap <silent> ,vmci :read ../templates/views/modals/contents_image.html.erb<return>/DeleteThis\\|ChangeObject\\|ChangeProcessedAttribute\\|100%\\|auto<return>
  " View Models Contents Form
  nnoremap <silent> ,vmcf :read ../templates/views/modals/contents_form.html.erb<return>/DeleteThis<return>
  " View Mdoels Header Base
  nnoremap <silent> ,vmhb :read ../templates/views/modals/header_base.html.erb<return>/ChangeIconColor\\|DeleteThis\\|ChangeIconType\\|ChangeTitle<return>
  " View Mdoels Close button Group
  nmap <silent> ,vmcg :read ../templates/views/modals/close_button_base.html.erb<return>/DeleteThis<return>

