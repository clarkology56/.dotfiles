" Sortable Table positions
  " Assets
  nnoremap <silent> ,psta a<% add_javascript_packs('lib/sortable_table_positions') %><return><return><%= content_for :stylesheets do %><return><%= stylesheet_link_tag('lib/sortable_table_positions') %><return><% end %><esc>

  " Controller
  nnoremap <silent> ,pstc :call IndentTemplate('', 0, 0, '../templates/misc_processes/sortable_table_positions/controller.rb')<return>/ChangeParentModel\\|ChangeParent\\|ChangeAuth\\|DeleteThis\\|ChangeChildren\\|ChangeItems\\|ChangeItem\\|ChangeAbility\\|ChangeStpId<return>
  
  " View
  nnoremap <silent> ,pstv :call IndentTemplate('', 0, 0, '../templates/misc_processes/sortable_table_positions/view.html.erb')<return>/ChangeStpId\\|ChangePath\\|ChangeCamelCaseStpId\\|ChangeParent\\|ChangeChildren\\|ChangeChild\\|DeleteThis\\|ChangeFinalHiddenRowHeight\\|ChangeWidth\\|ChangeColumn<return>


