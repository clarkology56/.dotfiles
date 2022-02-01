" Html Packages
  " Html Form BAse
  nnoremap <silent> ,hfba a<%= form_with(scope: 'ChangeScope', url: ChangeUrl_path(ChangeObject), method: :ChangeHTMLMethod) do \|f\| %><return><return><%# DeleteThis - insert hidden fields here if necessary %><return><%# DeleteThis - insert label type (or fields for if necessary) %><return><%# DeleteThis - insert form buttons %><return><return><% end %><esc>/ChangeObject\\|ChangeScope\\|ChangeUrl\\|ChangeHTMLMethod\\|DeleteThis<return>
  " Html Single Item Image container
  nnoremap <silent> ,hsii a<div id="ChangeAttribute_sii_form_container"><return><%= render('ChangePath/ChangeTemplate_ChangeAttribute_sii_form') %><return></div><esc>/ChangeAttribute\\|ChangePath\\|ChangeTemplate<return>
  " Html Single Item Image partial
  nnoremap <silent> ,hsiI a<%= form_with(scope: 'ChangeScope', url: ChangePath_path(ChangeObject), method: :ChangeMethod) do \|sii_form\| %><return><%= sii_form.label(:ChangeAttribute, class: 'm-0') do %><return><i class="c-pointer icon px-3 fs-4 text-secondary mdi mdi-camera"></i><return><% end %><return><%= sii_form.file_field(<return><tab>:ChangeAttribute,<return>data: { siiId: 'ChangeSiiId' },<return># DeleteThis - by default, images over 25MB are not allowed and images larger than 5MB will be resized to 5MB<return>DeleteThis - these can be changed by setting "removeIfOverMb" and "resizeIfOverMb" data attributes to an integer<return>DeleteThis - ex. "resizeIfOverMb: '1'" will attach message to any photo over 1MB (actual resizing must be set up in back end)<return>DeleteThis - ex. "removeIfOverMb: '10'" will attach message to any photo over 10MB and will hide form submit button<return><backspace><backspace>accept: 'image/*',<return># DeleteThis - limit to specific types of images by updating accept attribute<return>DeleteThis - common formats are: image/jpeg image/gif image/png image/heic<return>DeleteThis - keep image/* for now until I do more research and test different types.<return><backspace><backspace>multiple: ChangeToTrueOrRemove<return>) %><return><tab><%= render(<return><tab>'shared/single_input_images_modal',<return>siiId: 'ChangeSiiId',<return>title: 'Changetitle',<return># DeleteThis - Change title... typically "Preview Photo" or "Preview Photos" if mulitiple<return><backspace><backspace>form: sii_form<return>)%><return><% end %><esc>/ChangeScope\\|ChangePath\\|ChangeObject\\|ChangeMethod\\|ChangeAttribute\\|ChangeToTrueOrRemove\\|ChangeSiiId\\|Changetitle\\|DeleteThis<return>

" Html Show edit swap
  " Html Show edit swap BAse
  nnoremap <silent> ,hsba a<div id="ChangeSesId-ses-show"><return><%= render('ChangePath/ChangeSubController/show') %><return></div><return><return><div id="ChangeSesId-ses-edit"><return><%= render('ChangePath/ChangeSubController/edit') %><return></div><esc>/ChangeSesId\\|ChangePath\\|ChangeSubController<return>
  " Html Show edit swap Base for Single item
  nnoremap <silent> ,hsbs a<div class="d-flex"><return><div id="ChangeSesId-ses-show" class="ses-single-show"><return><span><%= ChangeDisplay %></span><return></div><return><return><div id="ChangeSesId-ses-edit"><return><%= render('ChangePath/ChangeSubController/edit', ChangeObject: ChangeObject) %><return></div><return></div><esc>/ChangeSesId\\|ChangeDisplay\\|ChangePath\\|ChangeSubController\\|ChangeObject<return>
  " Html Show edit swap Base for Single item - mulitple
  nnoremap <silent> ,hsbS a<%# DeleteThis - align-items-start is important so that items stay aligned even when there is an error message %><return><div class="d-flex flex-wrap align-items-start"><return><% ChangeObjects.each do \|ChangeObject\| %><return><%# DeleteThis - adjust padding below above as needed %><return><div class="d-flex pr-2"><return><div id="ChangeSesId-ses-show" class="ChangeSesId-ses-edit-button ses-single-show"><return><span><%= ChangeDisplay %></span><return></div><return><return><div id="ChangeSesId-ses-edit"><return><%= render('ChangePath/ChangeSubController/edit', ChangeObject: ChangeObject) %><return></div><return></div><return><% end %><return></div><esc>/DeleteThis\\|ChangeObjects\\|ChangeObject\\|ChangeSesId\\|ChangeDisplay\\|ChangePath\\|ChangeSubController<return>

  " Html Show edit swap Edit button - Button
  nnoremap <silent> ,hseb a<a class="btn btn-primary ChangeSesId-ses-edit-button">AddForCreateOrSaveForUpdate</a><esc>/ChangeSesId\\|AddForCreateOrSaveForUpdate<return>
  " Html Show edit swap Edit button - Icon
  nnoremap <silent> ,hsei a<a class="no-href-icon px-3 fs-4 text-primary mdi mdi-edit ChangeSesId-ses-edit-button"></a><esc>/ChangeSesId<return>
  " Html Show edit swap Edit button - Link
  nnoremap <silent> ,hsel a<a class="no-href-link ChangeSesId-ses-edit-button">AddForCreateOrSaveForUpdate</a><esc>/ChangeSesId\\|AddForCreateOrSaveForUpdate<return>
  " Html Show edit swap Edit button - Class
  nnoremap <silent> ,hsec aChangeSesId-ses-edit-button<esc>/ChangeSesId<return>
  
  " Html Form Single Item
  nnoremap <silent> ,hfsi a<%= form_with(scope: 'ChangeScope', url: ChangePath_path(ChangeObject), method: :ChangeMethod) do \|f\| %><return><div class="ses-single-input-container"><return><%# DeleteThis - use text feild or change input type %><return><%= f.text_field(<return>  :ChangeAttribute,<return># DeleteThis - typically looks better to manage input witdh by setting html size attribute; otherwise input width will default to 100% which doesn't look as good.<return>DeleteThis - if value is nil, delete size attribute and use default of 100% width. If value could be nil, use safe navigation.<return><backspace><backspace>size: ChangeObject.ChangeAttribute.length,<return># DeleteThis - include class "page-head" if for page header<return>DeleteThis - include class "card-head" if for card header<return><backspace><backspace>class: 'form-control ses-single-input',<return># DeleteThis - goal is for edit form to look like show but with border and buttons. If above classes do not work, try adding custom styles:<return><backspace><backspace># DeleteOrUseThis - style: 'height: XXpx !important; font-size: XXpx; font-weight: XXX; Etc...',<return><backspace><backspace><esc>:call HtmlInputMainAttributes()<return>o) %><return>  <a class="pl-3 pr-2 fs-4 c-pointer text-secondary mdi mdi-close-circle-o ChangeSesId-ses-cancel-button"></a><return><button class="pl-2 pr-3 fs-4 btn-no-background text-primary mdi mdi-check-circle ses-do-not-disable"></button><return></div><return><%= render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute], html_attributes: 'class="input_error ses-single"') %><return><% end %><esc>:call HtmlInputSearch()<return>
  
  " Html Form Top label Modal
  nmap <silent> ,hftm a<%#<delete> Top label modal for ChangeAttribute %><return><div class="form-row mb-2 d-flex justify-content-center"><return><div class="form-group-modal"><return><%#<delete> DeleteThis - insert Html Form Group %><return></div><return></div><return><esc>/ChangeAttribute\\|DeleteThis<return>
  " Html Form non-standard forms Array Simple
  nnoremap <silent> ,hfas :read ../templates/views/forms/non_standard_forms/array_simple.html.erb<return>/ChangeModel\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ChangeAttributes\\|ChangeAttribute\\|ReplaceThis\\|DeleteThis:<return>field tags (do not take form helper / don't include scope)
  " Html Form non-standard forms Array Hash
  nnoremap <silent> ,hfah :read ../templates/views/forms/non_standard_forms/array_hash.html.erb<return>/ChangeModel\\|ChangeScop\\|ChangeUrl\\|ChangeMethod\\|ChangeParentForm\\|ChangeObjects\\|ChangeObject\\|ReplaceThis\\|DeleteThis:\\|ChangeAttribute<return>
  
  
  
  
  
  
" Above needs major refactor - see form packages in docs






" Html Show
  " Html Show Left Label wrapper
  nmap <silent> ,hsll :call HtmlShowLeftLabel()<return>
  function! HtmlShowLeftLabel()
    let attribute = input("What is the attribute name (or name for group if multiple attributes)?: ")
    let labelDisplay = input("What is the label display?: ")
    let form = input("What is the form name (this is the scope on the original form)?: ")
    execute "normal! a<%# Left label for " . labelDisplay . " %>\<return><%# DeleteThis - NOTE: default label width is 150px; to change for all labels on this form, add style: ." . form . "_label { width: ChangeWidthpx; } %>\<return><div class=\"input_container\">\<return><%= label_tag(:" . attribute . ", '" . labelDisplay . ":', class: 'input_label " .form . "_label') %>\<return><div class\"form_row\">\<return><div class=\"form_group\">\<return><div class=\"sse\">ChangeDisplay</div>\<return></div>\<return></div>\<return></div>"
    let @/ = "DeleteThis\\|ChangeWidth\\|ChangeDisplay"
  endfunction
  " Html Show String from Time
  nnoremap <silent> ,hsst a<div class="sse"><%= ChangeObject.ChangeDate.try(:strftime, '%A, %B %-d, %Y') %></div><return><%# DeleteThis - for more details on strftime, use (,rbst) %><esc>/ChangeObject\\|ChangeDate<return>
  " Html Show Text Area
  nnoremap <silent> ,hsta a<div class="sse"><%= simple_format(ChangeObject.ChangeTextArea) %></div><esc>/ChangeObject\\|ChangeTextArea<return>

" Html Form
  " Html Form Fields For
  nnoremap <silent> ,hfff a<%# DeleteThis - ChangeModel is optional %><return><%= f.fields_for('ChangeScope', ChangeModel) do \|f\| %><return><% end %><esc>/DeleteThis\\|ChangeThisPls\\|ChangeScope\\|ChangeModel<return>
  " Html Form Left Label
  nmap <silent> ,hfll :call HtmlFormLeftLabel()<return>
  function! HtmlFormLeftLabel()
    let groupCount = input("How many inputs / attributes? (1-4): ")

    if groupCount == 1
      let groupCountClass = ''
    elseif groupCount == 2
      let groupCountClass = ' two_groups'
    elseif groupCount == 3
      let groupCountClass = ' three_groups'
    elseif groupCount == 4
      let groupCountClass = ' four_groups'
    endif
    
    if groupCount == 1
      let labelName = input("What is the attribute name?: ")
    else
      let labelName = input("What is the name for the label? (use snakecase): ")
    endif

    let labelDisplay = input("What is the label display?: ")

    if groupCount == 1
      let firstAttribute = labelName
    elseif groupCount > 1
      let firstAttribute = input("What is the first attribute name?: ")
      let secondAttribute = input("What is the second attribute name?: ")
    endif
    if groupCount > 2
      let thirdAttribute = input("What is the third attribute name?: ")
    endif
    if groupCount > 3
      let fourthAttribute = input("What is the fourth attribute name?: ")
    endif
    
    let form = input("What is the form name (this is the scope on the original form)?: ")
    let scope = input("What is the scope (this is either the scope on the original form OR the scope on fields_for)?: ")
    let object = input("What is the form object?: ")
    
    execute "normal! a<%# Left label for " . labelDisplay . " %>\<return><%# DeleteThis - NOTE: default label width is 150px; to change for all labels on this form, add style: ." . form . "_label { width: ChangeWidthpx; } %>\<return><div class=\"input_container\">\<return><%= " . scope . "_form.label(:" . labelName . ", '" . labelDisplay . ":', class: 'input_label " .form . "_label') %>\<return><div class\"form_row" . groupCountClass . "\">\<esc>mqa\<return></div>\<return></div>"
    execute "normal! `qo<div class=\"form_group\">\<return><%# DeleteThis - insert HTML Form Input %>\<return><%= render('shared/inline_errors', errors: " . object . ".errors.messages[:" . firstAttribute . "]) %>\<return></div>"
    if groupCount > 1
      execute "normal! o<div class=\"form_group\">\<return><%# DeleteThis - insert HTML Form Input %>\<return><%= render('shared/inline_errors', errors: " . object . ".errors.messages[:" . secondAttribute . "]) %>\<return></div>"
    endif
    if groupCount > 2
      execute "normal! o<div class=\"form_group\">\<return><%# DeleteThis - insert HTML Form Input %>\<return><%= render('shared/inline_errors', errors: " . object . ".errors.messages[:" . thirdAttribute . "]) %>\<return></div>"
    endif
    if groupCount > 3
      execute "normal! o<div class=\"form_group\">\<return><%# DeleteThis - insert HTML Form Input %>\<return><%= render('shared/inline_errors', errors: " . object . ".errors.messages[:" . fourthAttribute . "]) %>\<return></div>"
    endif
    let @/ = "DeleteThis\\|ChangeWidth"
  endfunction
  " Html Form Toggle Wrapper
  nnoremap <silent> ,hftw :call IndentTemplate('', 1, 0, '../templates/views/elements/toggle_wrapper.html.erb')<return>/DeleteThis<return>
  " Html Form Inline Errors
  nnoremap <silent> ,hfie :call HtmlFormInlineErrors()<return>/ChangeObject\\|ChangeAttribute<return>
  function! HtmlFormInlineErrors()
    execute "normal! a<%= render('shared/inline_errors', errors: ChangeObject.errors.messages[:ChangeAttribute]) %>"
  endfunction
  " Html Form ERrors
  nnoremap <silent> ,hfer a<div id="ChangeId_errors"><return><%# DeleteThis - if using a single error message for repeat block of many objects with ajax form, remove render from html and fill div contents with errors partial on ajax instead %><return><%= render('shared/errors', object: ChangeObject) %><return></div><esc>/ChangeId\\|DeleteThis\\|ChangeObject<return>
  " Html Form Full Errors
  nnoremap <silent> ,hffe a<%= render('shared/full_errors', errors: ChangeThisPls.errors.messages) %><esc>/ChangeThisPls<return>

" Html Form items / inputs
  " Html Input Main Attrubutes
  function! HtmlInputMainAttributes()
    execute "normal! avalue: ChangeObject.ChangeAttribute, # text Specifies the intial value for the control. If type = \"checkbox\" or type = \"radio\" this attribute is required. Not necessary for select.\<return>placeholder: 'Enter ChangeValue', # html-5 text Specifies a short hint that describes the expected value.\<return>required: ChangeValue, # html-5 required Specifies that an input field must be filled out before submitting the form.\<return>alt: ChangeValue, # text This specifies text to be used in case the browser/user agent can't render the input control.\<return>autocomplete: ChangeValue, # html-5 on off Specifies for enabling or disabling of autocomplete in INPUT element.\<return>autofocus: ChangeValue, # html-5 autofocus pecifies that INPUT element should automatically get focus when the page loads.\<return>checked: ChangeValue, # checked If type = \"radio\" or type = \"checkbox\" it will already be selected when the page loads.\<return>max: ChangeValue, # html-5 autofocus Specifies the maximum value.\<return>maxlength: ChangeValue, # number (set to 255 for strings) Defines the maximum number of characters allowed in a text field.\<return>min: ChangeValue, # html-5 number Specifies the minimum value.\<return>minlength: 'ChangeValue', # number Defines the minimum number of characters allowed in a text field.\<return>multiple: ChangeValue, # html-5 multiple Specifies that a user can enter multiple values.\<return>size: ChangeValue, # number Specifies the width of the control. If type = \"text\" or type = \"password\" this refers to the width in characters. Otherwise it's in pixels.\<return>step: ChangeValue, # html-5 number Specifies the legal number intervals for an input field"
  endfunction
  " Html Input ATtrubutes (all others)
  nnoremap <silent> ,hfaT aaccept: ChangeValue, # content types Specifies a comma-separated list of content types that the server accepts.<return>align: ChangeValue, # left right top middle bottom Deprecated − Defines the alignment of content<return>disabled: ChangeValue, # disabled Disables the input control. The button won't accept changes from the user. It also cannot receive focus and will be skipped when tabbing.<return>form: ChangeValue, # html-5 form_id Specifies one or more forms<return>formaction: ChangeValue, # html-5 URL Specifies the URL of the file that will process the input control when the form is submitted<return>formenctypeh: ChangeValue, #tml-5 application/x-www-form-urlencoded multipart/form-data text/plain Specifies how the form-data should be encoded when submitting it to the serve<return>formmethod: ChangeValue, #  html-5 post get Defines the HTTP method for sending data to the action URL<return>formnovalidate: ChangeValue, # html-5 formnovalidate Defines that form elements should not be validated when submitted<return>formtarget: ChangeValue, # html-5 _blank _self _parent _top Specifies the target where the response will be display that is received after submitting the form<return>height: ChangeValue, # html-5 pixels Specifies the height<return>list: ChangeValue, # html-5 datalist_id Specifies the <datalist> element that contains pre-defined options for an <input> element<return>name: ChangeValue, # text Assigns a name to the input control.<return>pattern: ChangeValue, # html-5 regexp Specifies a regular expression that an <input> element's value is checked against<return>readonly: ChangeValue, # readonly Sets the input control to read-only. It won't allow the user to change the value. The control however, can receive focus and are included when tabbing through the form controls.<return>src: ChangeValue, # URL Defines the URL of the image to display. Used only for type = "image".<return>type: ChangeValue, # button checkbox color date datetime datetime-local email file hidden image month number password radio range reset search submit tel text time url week Specifies the type of control.<return>width: ChangeValue, # html-5 pixels Specifies the width<esc>/ChangeValue<return>
  " Html Input Search
  function! HtmlInputSearch()
    let @/ = "ChangeFormObject\\|ChangeObject\\|ChangeAttribute\\|ChangeValue\\|ChangeOptionsList\\|# DeleteOrUseThis - \\|DeleteThis\\|MakeTrueOrRemoveThisLine\\|ChangeOptionObjects\\|ChangeOptionObject\\|ChangeDisplay\\|ChangeScope\\|ChangePath\\|ChangeMethod\\|ChangeSesId\\|ChangeRange"
    normal! n
  endfunction
  " Html Form Buttons (cancel & submit) - Buttons 
  nnoremap <silent> ,hfbb a<%# Form buttons %><return><div class="d-flex justify-content-end"><return><a class="btn btn-secondary mr-3 ChangeSesId-ses-cancel-button">Cancel</a><return><%= f.submit 'AddForCreateOrSaveForUpdate', class: "btn btn-primary" %><return></div><esc>/ChangeSesId\\|AddForCreateOrSaveForUpdate<return>
  " Html Form Buttons (cancel & submit) - Icons
  nnoremap <silent> ,hfbi a<%# Form buttons - icons %><return><div class="d-flex align-items-center justify-content-center"><return><a class="px-3 fs-4 c-pointer text-secondary mdi mdi-close-circle-o ChangeSesId-ses-cancel-button"></a><return><button class="px-3 fs-4 btn-no-background text-primary mdi mdi-check-circle ses-do-not-disable"></button><return></div><esc>/ChangeSesId<return>
  " Html Form Buttons (cancel & submit) - Modal
  nnoremap <silent> ,hfbm a<%# Form buttons - for modal %><return><div class="form-row mb-2 d-flex justify-content-center"><return><div class="form-group-modal mt-6 px-3 d-flex justify-content-between"><return><button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button><return><%= f.submit 'AddForCreateOrSaveForUpdate', class: 'btn btn-primary' %><return></div><return></div><esc>/AddForCreateOrSaveForUpdate<return>
  " Html Form LAbel
  nnoremap <silent> ,hfla a<%= f.label(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
  " Html Form Label Block
  nnoremap <silent> ,hflb a<%= f.label(:ChangeAttribute, class: 'col-form-label') do %><return>ChangeDisplay:<return><% end %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
  " Html Form Label Tag
  nnoremap <silent> ,hflt a<%= label_tag(:ChangeAttribute, 'ChangeDisplay:', class: 'col-form-label') %><esc>/ChangeThisPls\\|ChangeAttribute\\|ChangeDisplay<return>
  " Html Form HIdden field
  nnoremap <silent> ,hfhi a<%= f.hidden_field(:ChangeThisPls, value: ChangeThisPls) %><esc>/ChangeThisPls<return>
  " Html Form Hidden field Tag
  nnoremap <silent> ,hfht a<%= hidden_field_tag(:ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
  " Html Form Text Field
  nnoremap <silent> ,hfte a<%= f.text_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Text Area
  nnoremap <silent> ,hfta a<%= f.text_area(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Number Field
  nnoremap <silent> ,hfnu a<%= f.number_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'ChangeAutocomplete',<return>placeholder: 'Enter ChangePlaceholder',<return>required: true,<return>size: ChangeSize,<return>min: ChangeMin,<return>max: ChangeMax,<return>step: ChangeStep,<return>) %><esc>/ChangeAttribute\\|ChangeValue\\|ChangeAutocomplete\\|ChangePlaceholder\\|ChangeSize\\|ChangeMin\\|ChangeMax\\|ChangeStep<return>
  " Html Form CAlendar
  nnoremap <silent> ,hfca a<%= f.text_field(<return><tab>:ChangeAttribute,<return>class: 'form-control datetimepicker',<return><space><backspace><esc>:call HtmlInputCalendarMessage3()<return>o<backspace><backspace>value: ChangeObject.ChangeAttribute.try(:strftime, '%A, %B %-d, %Y'),<return>placeholder: 'Enter ChangeValue',<return>autocomplete: 'off',<return><esc>:call HtmlInputCalendarMessage1()<return>o<backspace><backspace>data: { 'min-view': '2', 'date-format': 'DD, MM d, yyyy' },<return>onclick: "removeInlineCalendarsAfterAjax()",<return><esc>:call HtmlInputMainAttributes()<return>o) %><return><space><backspace><esc>:call HtmlInputCalendarMessage2()<return>v<up>><esc><down>$:call HtmlInputSearch()<return>
  " Html Form CAlendar with button
  nnoremap <silent> ,hfcA a<%<esc>:call HtmlInputCalendarMessage1()<return>a %><return><div class="input-group date datetimepicker" data-min-view="2" data-date-format="DD, MM d, yyyy"><return><%= f.text_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><space><backspace><esc>:call HtmlInputCalendarMessage3()<return>o<backspace><backspace>value: ChangeObject.ChangeAttribute.try(:strftime, '%A, %B %-d, %Y'),<return>placeholder: 'Enter ChangeValue',<return>autocomplete: 'off',<return>onclick: "removeInlineCalendarsAfterAjax()",<return><esc>:call HtmlInputMainAttributes()<return>o) %><return><space><space><div class="input-group-append"><return><a class="btn btn-primary cal-button ses-do-not-disable" onclick="removeInlineCalendarsAfterAjax()"><i class="icon-th mdi mdi-calendar"></i></a><return></div><return></div><return><esc>:call HtmlInputCalendarMessage2()<return><return>:call HtmlInputSearch()<return>
  function! HtmlInputCalendarMessage1()
    execute "normal! a# DeleteThis - update min-view: 0 is 5 minutes; 1 is hour; 2 is date\<return>DeleteThis - update date-format: DD is Monday (day of week); MM is January; mm is 01; m is 1 (no preceding 0); dd is 01 (day of month); d is 1 (no preceding 0)"
  endfunction
  function! HtmlInputCalendarMessage2()
    execute "normal! a\<%# DeleteThis - if value is nil or value excluded, text box will be blank and calendar defaults to today. If a value is included, make sure it is a date as a string, not a date time (ie ues strftime) %>\<return>\<%# DeleteThis - see https://xdsoft.net/jqplugins/datetimepicker/ for more options %>"
  endfunction
  function! HtmlInputCalendarMessage3()
    execute "normal! a# DeleteThis - make sure strftime format matches datetimepicker date format"
  endfunction
  " Html Form Date Field
  nnoremap <silent> ,hfda a<%= f.date_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Time Field
  nnoremap <silent> ,hfti a<%= f.time_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form date time Local Field
  nnoremap <silent> ,hfdt a<%= f.datetime_local_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Month Field
  nnoremap <silent> ,hfmo a<%= f.month_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Week Field
  nnoremap <silent> ,hfwe a<%= f.week_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Range Field
  nnoremap <silent> ,hfra a<%= f.range_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return>in: ChangeRange,<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Search Field
  nnoremap <silent> ,hfse a<%= f.search_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Telephone Field
  nnoremap <silent> ,hftp a<%= f.telephone_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Url Field
  nnoremap <silent> ,hfur a<%= f.url_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Color Field
  nnoremap <silent> ,hfco a<%= f.color_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return><esc>:call HtmlInputMainAttributes()<return>o) %><esc>:call HtmlInputSearch()<return>
  " Html Form Email Field
  nnoremap <silent> ,hfem a<%= f.email_field(<return>  :ChangeAttribute,<return>value: ChangeValue,<return>class: 'form-control',<return>autofocus: true,<return>autocomplete: 'email',<return>placeholder: 'Enter ChangePlaceholder',<return>required: true,<return>size: 'ChangeSize',<return>maxlength: 'ChangeMaxLength'<return>) %><esc>/ChangeAttribute\\|ChangeValue\\|'email'\\|ChangePlaceholder\\|ChangeSize\\|ChangeMaxLength<return>
  " Html Form Password field
  nnoremap <silent> ,hfpa a<%= f.password_field(<return>  :ChangeAttribute,<return>class: 'form-control',<return>autofocus: true,<return>placeholder: 'Enter ChangePlaceholder',<return>required: true,<return>size: ChangeSize,<return>minlength: ChangeMinLength) %><esc>/ChangeAttribute\\|ChangePlaceholder\\|ChangeSize\\|ChangeMinLength<return>
  " Html Form Rich Text
  nnoremap <silent> ,hfrt a<%= f.rich_text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
  " Html Form Checkbox Group
  nnoremap <silent> ,hfcg a<div class="pt-1"><return><%# DeleteThis - default is stacked checkboxes. To make inline, add class "d-flex" to div above %><return><space><backspace><esc>:call HtmlInputCheckbox()<return>`qo<space><backspace><esc>:call HtmlInputCheckbox()<return>`qo</div><esc>n
  " Html Form CheckBox
  nnoremap <silent> ,hfcb :call HtmlInputCheckbox()<return>
  function! HtmlInputCheckbox()
    execute "normal! a<div class=\"pr-2 custom-control custom-checkbox\">\<return><%= f.check_box(:ChangeAttribute, class: 'custom-control-input') %>\<return><%= f.label(:ChangeAttribute, 'ChangeDisplay', class: \"custom-control-label form-text2\") %>\<return><%# DeleteThis - for blank label, make label above a block with a blank space (\" \") between the do and end %>\<return></div>\<esc>mq"
    let @/ = "ChangeAttribute\\|ChangeDisplay\\|DeleteThis"
  endfunction
  " Html Form Radio Inline
  nnoremap <silent> ,hfri a<div class="pt-1"><return><label class="custom-control custom-radio custom-control-inline"><return><%= f.radio_button(:ChangeAttribute, ChangeValue, class: 'custom-control-input') %><return><span class="custom-control-label form-text2">ChangeDisplay</span><return></label><return><%# DeleteThis - copy label and contents for additional options %><return></div><esc>/ChangeAttribute\\|ChangeValue\\|ChangeDisplay\\|DeleteThis<return>
  " Html Form Radio Stacked
  nnoremap <silent> ,hfrs a<div class="pt-1"><return><label class="custom-control custom-radio"><return><%= f.radio_button(:ChangeAttribute, ChangeValue, class: 'custom-control-input') %><return><span class="custom-control-label form-text2">ChangeDisplay</span><return></label><return><%# DeleteThis - copy label and contents for additional options %><return></div><esc>/ChangeAttribute\\|ChangeValue\\|ChangeDisplay\\|DeleteThis<return>
  " Html Form TOggle
  nnoremap <silent> ,hfto :call IndentTemplate('', 1, 0, '../templates/views/elements/toggle.html.erb')<return>/ChangeColor\\|switch-button-yesno\\|DeleteThis\\|ChangeAttribute<return>
  function HtmlInputSelectValueNote()
    execute "normal! a# DeleteThis - even if object.attribute has a value, the selected value must be set manually.\<return>Typically options_for_select is the best option (,hfos)\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectIncludeBlankNote()
    execute "normal! a# DeleteThis - include_blank is best when a selection is not requried and can be left blank\<return>will add an option to the beginning of the list with value=\"\" regardless of the value of\<return>object.attribute\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectPromptNote()
    execute "normal! a# DeleteThis - prompt is best when a selection is required and the user needs to be prompted\<return>to make a selection. If object.attribute is nil, prompt will add an option to the beginning\<return>of the list with value=\"\". However, if object.attribute has a value, then prompt will not\<return>add an option to the beginning. If object.attribute is nil and then a selection is made,\<return>the prompt will remain. The prompt is only removed if the object is saved and the select\<return>element is re-rendered (via ajax or re-reloading the page)\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectDefaultNote()
    execute "normal! a# DeleteThis - for select with default, neither include_blank nor prompt is added. This means\<return>the only options that will appear will be the options from the options list. If a value\<return>is selected then that value will be selected when the page loads. If no value is selected,\<return>then the first option from the options list will be selected as the \"default\" option\<return>\<backspace>\<backspace>"
  endfunction
  function! HtmlInputSelectRequiredNote()
    execute "normal! a# DeleteThis - add or remove \"required: true\" based on notes above\<return>DeleteThis - for more details on required, see note below:\<return>\<tab>required on HTML select elements will error unless the first opion has value=\"\".\<return>The rails select helper adjust for this in several ways:\<return>\<tab>1) if neither include_blank or prompt options are passed, then adding required will also add an\<return>empty option as the first option with a value="" and will make the select required\<return>2) if include_blank is added, rails will add the first option with whatever display is selected\<return>and will make the select required\<return>3) if prompt is selected and the object has a value of nil for the attribute, then rails will add\<return>a first option with whatever display is selected and will make the select required\<return>4) if prompt is selected and the object has a value for the attribute, then rails will ignore the\<return>required attribute (because in this case, there is no blank option and therefore the select is\<return>effectively required. However, it would error if the required attribute was actually included\<return>because for html select to have the required attribute, the first option must have a value of nil)\<return>\<backspace>\<backspace>\<backspace>\<backspace>"
  endfunction
  " Html Form Select Optional
  nnoremap <silent> ,hfso a<%= f.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{ include_blank: 'Select' },<return><space><backspace><esc>:call HtmlInputSelectIncludeBlankNote()<return>a{<return><tab>class: 'form-control',<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  " Html Form Select Required
  nnoremap <silent> ,hfsr a<%= f.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{ prompt: 'Select' },<return><space><backspace><esc>:call HtmlInputSelectPromptNote()<return>a{<return><tab>class: 'form-control',<return>required: true,<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  " Html Form Select Default
  nnoremap <silent> ,hfsd a<%= f.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{},<return><space><backspace><esc>:call HtmlInputSelectDefaultNote()<return>a{<return><tab>class: 'form-control',<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  " Html Form Select Block
  nnoremap <silent> ,hfsb a<%= f.select(<return>  :ChangeAttribute,<return>[],<return>{ prompt: 'Select' include_blank: 'Select' },<return># DeleteThis - set up select:<return><tab>1) if select is optional: use include_blank above and remove "required: true" below<return>2) if select is requried and the user should be prompted to make a selection: use prompt<return>above and add "required: true" below<return>3) if select is requried with a default selection picked (rather than a prompt): leave<return>above blank (do not use include_blank nor prompt above) and remove "required: true" below<return><backspace>DeleteThis - see notes below for more details on prompt and include_blank<return><backspace><backspace><esc>:call HtmlInputSelectPromptNote()<return>:call HtmlInputSelectIncludeBlankNote()<return>a{<return><tab>class: 'form-control',<return>required: MakeTrueOrRemoveThisLine<return><space><backspace><esc>:call HtmlInputSelectRequiredNote()<return>aautofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>}) do<return>%><return><% ChangeOptionObjects.each do \|ChangeOptionObject\| %><esc>V2><esc>o<option value="<%= ChangeOptionObject.ChangeValue %>"<%= " selected=\"true\"" if ChangeOptionObject.ChangeValue == ChangeFormObject.ChangeValue %>><%= ChangeOptionObject.ChangeDisplay %></option><return><% end %><return><% end %><esc>:call HtmlInputSearch()<return>
  " Html Form select Options for select
  nnoremap <silent> ,hfos aoptions_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
  " Html Form select Options for select for Enum
  nnoremap <silent> ,hfoe aoptions_for_select(ChangeClass.ChangeAttributes, ChangeObject.ChangeAttribute_for_database)<esc>/ChangeClass\\|ChangeAttributes\\|ChangeObject\\|ChangeAttribute<return>
  " Html Form Grouped options for select
  nnoremap <silent> ,hfgs agrouped_options_for_select(ChangeOptionsListDisplayFirstValueSecond, ChangeSelectedOptionOrOptionsIfMultiple)<esc>/ChangeOptionsListDisplayFirstValueSecond\\|ChangeSelectedOptionOrOptionsIfMultiple<return>
  " Html Form Select Multiple
  nnoremap <silent> ,hfsm a<%= f.select(<return>  :ChangeAttribute,<return>ChangeOptionsList,<return><space><backspace><esc>:call HtmlInputSelectValueNote()<return>a{ include_hidden: false },<return><space><backspace><esc>:call HtmlInputSelectMultipleOptionsNote()<return>a{<return><tab>class: 'form-control',<return>multiple: true,<return>required: MakeTrueOrRemoveThisLine,<return>autofocus: MakeTrueOrRemoveThisLine<return><backspace>)<backspace>})<return>%><esc>:call HtmlInputSearch()<return>
  function! HtmlInputSelectMultipleOptionsNote()
    execute "normal! a# DeleteThis - it's typically best to set include_hidden to false AND MAKE SURE to include strong params\<return>for select multiple (,acsm) in the controller so that when nothing is selected there are no errors.\<return>See notes below regarding include_hidden:\<return>  include_hidden only applies to select multiple.\<return>You need to understand how include_hidden works and how it impacts params.\<return>You also need to know how you want params to work in your controller action.\<return>include_hidden defaults to true (meaning if you want to set it to true, you can simply remove\<return>it from the options list)\<return>When set to true, rails adds a hidden, selected option with value \"\".\<return>When set to false, it will not include this hidden option.\<return>The idea is that if nothing is selected, then the param will still show up in the controller.\<return>So if you have a form with scope \"user\" and a select multiple for attribute \"friend_ids\",\<return>then this is how params will work in the controller:\<return>  if include_hidden is set to true:\<return>  If nothing is seleted: params[:user][:friend_ids] will return [\"\"]. This is nice because\<return>otherwise params[:user][:friend_ids] could be nil, or if params[:user] is nil, then\<return>params[:user][:friend_ids] will error\<return>If something is selected: params[:user][:friend_ids] will return [\"\", \"1\"] which is\<return>annoying because now you have a value of \"\" in the list which can cause SQL queries\<return>to error\<return>\<backspace>If include_hidden is set to false and something is selected it will function as expceted:\<return>  params[:user][:friend_ids] will return [\"1\"]\<return>\<backspace>If include_hidden is set to false and nothing is selected:\<return>  If there are additional inputs on the form other than friend_ids:\<return>  params[:user][:friend_ids] will return nil so you may need\<return>\"if params[:user][:friend_ids]\" in the controller\<return>\<backspace>If friend_ids is the only input on the form: params[:user] will be nil and\<return>  params[:user][:friend_ids] will error with NoMethodError for NilClass so you may need\<return>\"if params[:user] && params[:user][:friend_ids]\" in the controller\<return>\<backspace>\<backspace>\<backspace>After understanding how include_hidden works and how you want params to work in your\<return>controller, choose whether or not to set include_hidden to true or false.\<return>\<backspace>DeleteThis - regarding include_blank and prompt:\<return>  Do not use include_blank or prompt on select multiple. Functionaly they work the same as\<return>on select single (they add a first option with value=\"\") but this is not necessary on\<return>select multiple. On select single, in order to select nothing, you have to select an option\<return>with value=\"\" (which is why include_blank and prompt exist). But on select multiple, in order\<return>to select nothing, you simply de-select all the options. In fact, having an option with\<return>value=\"\" will break the required attribute on select multiple (if it's included) because\<return>when an option with value=\"\" is slected on select multiple, the select thinks that an\<return>option has been selected which technically it has, but from business logic perspective,\<return>it hasnt, and so the required front end validation will not error when really we would\<return>want it to error. So don't use include_blank or prompt with select multiple.\<return>\<backspace>\<backspace>\<backspace>"
  endfunction
  " Html Form Non-Input Input
  nnoremap <silent> ,hfni a<span id="ChangeDisplayId" class="ses-non-input-input"><%= ChangeDisplay %></span><return><%= f.hidden_field(:ChangeAttribute, id: 'ChangeHiddenInputId', value: ChangeValue) %><esc>/ChangeDisplayId\\|ChangeDisplay\\|ChangeAttribute\\|ChangeHiddenInputId\\|ChangeValue<return>
  " Html Form SUbmit
  nnoremap <silent> ,hfsu a<%= f.submit('ChangeDisplay', class: 'btn btn-ChangeColor') %><esc>/ChangeDisplay\\|ChangeColor<return>
  " Html Form Submit Link
  nnoremap <silent> ,hfsl a<%= f.submit('ChangeDisplay', class: 'btn-link') %><esc>/ChangeDisplay<return>
  " Html Form Input Submit with Image
  nnoremap <silent> ,hfsI a<%= image_submit_tag('ChangePathAndFileName', alt: 'ChangeAltText', width: 'ChangeWidth', height: 'auto') %><esc>/ChangePathAndFileName\\|ChangeAltText\\|ChangeWidth<return>
  
  
  
  
  
  
"Html Depricated
  " Html Show Top Label (for top label)
  nmap <silent> ,hstl a<div class="form-row"><return><%#<delete> DeleteThis - insert Show Group %><return></div><esc>/DeleteThis<return>
  " Html Show Group 1
  nmap <silent> ,hsg1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><return><esc>,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return>
  " Html Show Group 2
  nmap <silent> ,hsg2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yP
  " Html Show Group 3
  nmap <silent> ,hsg3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPP
  " Html Show Group 4
  nmap <silent> ,hsg4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label tag if top label (,hflt) %><esc>,,o,hssc$a<return></div><esc>/DeleteThis\\|ChangeDisplay<return><up>V3<down>yPPP
  " Html Show Simple Container
  nnoremap <silent> ,hssc a<div class="sse">ChangeDisplay</div><esc>/ChangeDisplay<return>
  " Html Form Top Label
  nmap <silent> ,hftl a<%#<delete> Top label for ChangeAttribute %><return><div class="form-row mb-2"><return><%#<delete> DeleteThis - insert Html Form Group %><return></div><return><esc>/ChangeAttribute\\|DeleteThis<return>
  " Html Form Group 1
  nnoremap <silent> ,hfg1 a<div class="form-group col-12"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return>
  " Html Form Group 2
  nnoremap <silent> ,hfg2 a<div class="form-group col-12 col-sm-6"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yP
  " Html Form Group 3
  nnoremap <silent> ,hfg3 a<div class="form-group col-12 col-sm-4"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPP
  " Html Form Group 4
  nnoremap <silent> ,hfg4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><esc>:call HtmlFormGroupContents()<return>o</div><esc>/DeleteThis\\|ChangeObject\\|ChangeAttribute<return><up>V4<down>yPPP
  function! HtmlFormGroupContents()
    execute "normal! a<%# DeleteThis - insert label if top label (,hfla) %>\<return><%# DeleteThis - insert HTML Form Input %>\<return>\<esc>:call HtmlFormInlineErrors()\<return>"
  endfunction
