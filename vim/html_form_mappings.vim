" Html Form BAse
nnoremap <silent> ,hfba a<%= form_with(model: ChangeModel, url: ChangePath(account, ChangeModel), method: :ChangeHtmlMethod) do \|f\| %><return><%# DeleteThis - insert hidden fields here if necessary %><return><%# DeleteThis - insert form groups and files (or fields for if necessary) %><return><% end %><esc>/ChangeModel\\|ChangePath\\|ChangeHtmlMethod\\|DeleteThis<return>

" Html Form Submit buttons Turboframe
nnoremap <silent> ,hfst :call IndentTemplate('views/forms/submit_buttons_turboframe.html.erb')<return>/ChangeSubmitToAddForNewOrSaveForUpdate\\|ChangePath\\|ChangeModel<return>
" Html Form Submit buttons Html (ie non-turboframe)
nnoremap <silent> ,hfsh :call IndentTemplate('views/forms/submit_buttons_html.html.erb')<return>/ChangeSubmitToAddForNewOrSaveForUpdate<return>
" Html Form Submit buttons modal
nnoremap <silent> ,hfsm :call IndentTemplate('views/forms/submit_buttons_modal.html.erb')<return>/ChangeSubmitToAddForNewOrSaveForUpdate<return>

" Html Form Group Top label
nnoremap <silent> ,hfgt :call IndentTemplate('views/forms/groups_top_label.html.erb')<return>/ChangeLabelDisplay\\|ChangeLabel\\|DeleteThis\\|ChangeAttribute<return>
" Html Form Group left label for Checkboxes  
nnoremap <silent> ,hfgc :call IndentTemplate('views/forms/groups_left_label_for_checkboxes.html.erb')<return>/ChangeLabelDisplay\\|ChangeLabel\\|DeleteThis\\|ChangeAttributeDisplay\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Form Group left label for Radio buttons  
nnoremap <silent> ,hfgr :call IndentTemplate('views/forms/groups_left_label_for_radio_buttons.html.erb')<return>/ChangeLabelDisplay\\|ChangeLabel\\|DeleteThis\\|ChangeDisplay\\|ChangeAttribute\\|ChangeOrRemove\\|ChangeValue<return>
" Html Form Group Left label
nnoremap <silent> ,hfgt :call IndentTemplate('views/forms/groups_left_label.html.erb')<return>/ChangeLabelDisplay\\|ChangeLabel\\|DeleteThis\\|ChangeAttribute<return>
" Html Form Group left label 2
nnoremap <silent> ,hfg2 :call IndentTemplate('views/forms/groups_left_label2.html.erb')<return>/ChangeLabelDisplay\\|ChangeLabel\\|DeleteThis\\|ChangeAttribute<return>
" Html Form Group left label 3
nnoremap <silent> ,hfg3 :call IndentTemplate('views/forms/groups_left_label3.html.erb')<return>/ChangeLabelDisplay\\|ChangeLabel\\|DeleteThis\\|ChangeAttribute<return>
" Html Form Group left label 4
nnoremap <silent> ,hfg4 :call IndentTemplate('views/forms/groups_left_label4.html.erb')<return>/ChangeLabelDisplay\\|ChangeLabel\\|DeleteThis\\|ChangeAttribute<return>

" Html Input Checkboxes Base
nnoremap <silent> ,hicb :call IndentTemplate('views/forms/inputs_checkboxes_base.html.erb')<return>/DeleteThis\\|ChangeAttributeDisplay\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Input Checkbox Stand alone
nnoremap <silent> ,hics :call IndentTemplate('views/forms/inputs_checkbox_stand_alone.html.erb')<return>/ChangeAttributeDisplay\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Input Checkbox stand alone Label first
nnoremap <silent> ,hicl :call IndentTemplate('views/forms/inputs_checkbox_stand_alone_label_first.html.erb')<return>/ChangeAttributeDisplay\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Input File Field
nnoremap <silent> ,hiff :call IndentTemplate('views/forms/inputs_file_field.html.erb')<return>/ChangeAttribute\\|ChangeOrRemove<return>
" Html Input Radio Buttons
nnoremap <silent> ,hirb :call IndentTemplate('views/forms/inputs_radio_buttons.html.erb')<return>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeOrRemove\\|ChangeDisplay<return>
" Html Input Text Field
nnoremap <silent> ,hitf :call IndentTemplate('views/forms/inputs_text_field.html.erb')<return>/ChangeAttribute\\|ChangeOrRemove\\|ChangeDisplay<return>

" Html Input Attributes Main
nnoremap <silent> ,hiam :call IndentTemplate('views/forms/attributes.html.erb')<return>/ChangeAttributeDisplay\\|ChangeAttribute<return>
