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
" Html Hidden Field
nnoremap <silent> ,hihf :call IndentTemplate('views/forms/inputs_hidden_field.html.erb')<return>/ChangeAttribute\\|DeleteThis<return>

" Html Input Attributes Main
nnoremap <silent> ,hiam :call IndentTemplate('views/forms/attributes.html.erb')<return>/ChangeAttributeDisplay\\|ChangeAttribute<return>
