" Html Input Checkboxes Base
nnoremap <silent> ,hicb :call IndentTemplate('views/forms/inputs_checkboxes_base.html.erb')<return>/DeleteThis\\|ChangeAttributeDisplay\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Input Checkbox Stand alone
nnoremap <silent> ,hics :call IndentTemplate('views/forms/inputs_checkbox_stand_alone.html.erb')<return>/DeleteThis\\|ChangeAttributeDisplay\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Input Checkbox stand alone Label first
nnoremap <silent> ,hicl :call IndentTemplate('views/forms/inputs_checkbox_stand_alone_label_first.html.erb')<return>/DeleteThis\\|ChangeAttributeDisplay\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Input File Field
nnoremap <silent> ,hiff :call IndentTemplate('views/forms/inputs_file_field.html.erb')<return>/DeleteThis\\|ChangeAttribute\\|ChangeOrRemove<return>
" Html Input Hidden Field
nnoremap <silent> ,hihf :call IndentTemplate('views/forms/inputs_hidden_field.html.erb')<return>/ChangeAttribute\\|DeleteThis<return>
" Html Input Radio Buttons
nnoremap <silent> ,hirb :call IndentTemplate('views/forms/inputs_radio_buttons.html.erb')<return>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeOrRemove\\|ChangeDisplay<return>
" Html Input Select Optional
nnoremap <silent> ,hiso :call IndentTemplate('views/forms/inputs_select_optional.html.erb')<return>/ChangeAttribute\\|DeleteThis\\|ChangeOptionsList\\|ChangeOrRemove<return>
" Html Input Select Required
nnoremap <silent> ,hisr :call IndentTemplate('views/forms/inputs_select_required.html.erb')<return>/ChangeAttribute\\|DeleteThis\\|ChangeOptionsList\\|ChangeOrRemove<return>
" Html Input Select Default option
nnoremap <silent> ,hisd :call IndentTemplate('views/forms/inputs_select_default.html.erb')<return>/ChangeAttribute\\|DeleteThis\\|ChangeOptionsList\\|ChangeOrRemove<return>
" Html Input Select Block
nnoremap <silent> ,hisb :call IndentTemplate('views/forms/inputs_select_block.html.erb')<return>/ChangeAttribute\\|DeleteThis\\|ChangeOrRemove\\|ChangeOptionObjects\\|ChangeOptionObject\\|ChangeValue\\|ChangeDisplay<return>
" Html Input Select Options for select
nnoremap <silent> ,hios aoptions_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/DeleteThis\\|ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
" Html Input select Options for select for Enum
nnoremap <silent> ,hioe aoptions_for_select(ChangeClass.ChangeAttributes, ChangeObject.ChangeAttribute_for_database)<esc>/DeleteThis\\|ChangeClass\\|ChangeAttributes\\|ChangeObject\\|ChangeAttribute<return>
" Html Input Grouped options for select
nnoremap <silent> ,hiog agrouped_options_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/DeleteThis\\|ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
" Html Input Text Area
nnoremap <silent> ,hita :call IndentTemplate('views/forms/inputs_text_area.html.erb')<return>/DeleteThis\\|ChangeAttribute\\|ChangeOrRemove\\|ChangeDisplay<return>
" Html Input Text Field
nnoremap <silent> ,hitf :call IndentTemplate('views/forms/inputs_text_field.html.erb')<return>/DeleteThis\\|ChangeAttribute\\|ChangeOrRemove\\|ChangeDisplay<return>

" Html Input Attributes Main
nnoremap <silent> ,hiam :call IndentTemplate('views/forms/attributes.html.erb')<return>/DeleteThis\\|ChangeAttributeDisplay\\|ChangeAttribute<return>
