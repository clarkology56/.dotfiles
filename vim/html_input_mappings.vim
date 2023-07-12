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
" Html Input Hidden Field
nnoremap <silent> ,hihf :call IndentTemplate('views/forms/inputs_hidden_field.html.erb')<return>/ChangeAttribute\\|DeleteThis<return>
" Html Input Select Optional
nnoremap <silent> ,hiso :call IndentTemplate('views/forms/inputs_select_optional.html.erb')<return>/ChangeAttribute\\|DeleteThis\\|ChangeOptionsList\\|ChangeOrRemove<return>
" Html Input Select Required
nnoremap <silent> ,hisr :call IndentTemplate('views/forms/inputs_select_required.html.erb')<return>/ChangeAttribute\\|DeleteThis\\|ChangeOptionsList\\|ChangeOrRemove<return>
" Html Input Select Default option
nnoremap <silent> ,hisd :call IndentTemplate('views/forms/inputs_select_default.html.erb')<return>/ChangeAttribute\\|DeleteThis\\|ChangeOptionsList\\|ChangeOrRemove<return>
" Html Input Attributes Main
nnoremap <silent> ,hiam :call IndentTemplate('views/forms/attributes.html.erb')<return>/ChangeAttributeDisplay\\|ChangeAttribute<return>
" Html Form select Options for select
nnoremap <silent> ,hios aoptions_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
" Html Form select Options for select for Enum
nnoremap <silent> ,hioe aoptions_for_select(ChangeClass.ChangeAttributes, ChangeObject.ChangeAttribute_for_database)<esc>/ChangeClass\\|ChangeAttributes\\|ChangeObject\\|ChangeAttribute<return>
" Html Form Grouped options for select
nnoremap <silent> ,hiog agrouped_options_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
