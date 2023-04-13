" Html Ui Accordion chevron Left
nnoremap <silent> ,hual a<%# DeleteThis - add class accordion-open to start with accordion in open position %><return><div class="custom-accordion" data-accordionId="ChangeAccordionId"><return><div class="accordion-header d-flex align-items-center"><return><i id="ChangeAccordionId_chevron" class="accordion-chevron icon fs-3 text-ChangeColor mdi mdi-chevron-right"></i><return><span class="pl-2 text-ChangeColor">ChangeAccordionHeader</span><return></div><return><div id="ChangeAccordionId_body" class="accordion-body"><return>ChangeAccordionBody<return></div><return></div><esc>/DeleteThis\\|ChangeAccordionId\\|ChangeAccordionHeader\\|ChangeColor\\|ChangeAccordionBody<return>
" Html Ui Accordion chevron Right
nnoremap <silent> ,huar a<%# DeleteThis - add class accordion-open to start with accordion in open position %><return><div class="custom-accordion accordion-chevron-180" data-accordionId="ChangeAccordionId"><return><div class="accordion-header d-flex align-items-center"><return><span class="pr-2 text-ChangeColor">ChangeAccordionHeader</span><return><i id="ChangeAccordionId_chevron" class="accordion-chevron ml-auto icon fs-3 text-ChangeColor mdi mdi-chevron-up"></i><return></div><return><div id="ChangeAccordionId_body" class="accordion-body"><return>ChangeAccordionBody<return></div><return></div><esc>/DeleteThis\\|ChangeAccordionId\\|ChangeAccordionHeader\\|ChangeColor\\|ChangeAccordionBody<return>
" Html Ui DropDown (full)
nnoremap <silent> ,hudd :call HtmlUiDropDown()<return>
function! HtmlUiDropDown()
  let dropDownId = input("Please give an HTML id for this dropdown (include ERB if necessary): ")
  let inputStyle = input("Will the dropdown be styled as a button, icon, link or other? (b/i/l/o): ")
  if inputStyle == 'b'
    let styleClasses = g:buttonClasses . ' '
    let dropDownDisplay = 'ChangeDropdownDisplay'
  elseif inputStyle == 'i'
    let styleClasses = 'no-href-icon ' . g:iconClasses . ' '
    " there is not display for icon style, so leaving dropDownDisplay blank
  elseif inputStyle == 'l'
    let styleClasses = 'no-href-link '
    let dropDownDisplay = 'ChangeDropdownDisplay'
  else
    let styleClasses = ''
    let dropDownDisplay = 'ChangeDropdownDisplay'
  endif
  execute "normal! a<%# DeleteThis - see bootstrap docs for customizing dropdown %>\<return><div class=\"dropdown\">\<return><a id=\"" . dropDownId . "\" class=\"" . styleClasses . "dropdown-toggle\" data-toggle=\"dropdown\" aria-haspopup=\"true\" aria-expanded=\"false\">"
  if inputStyle == 'i'
  else
    execute "normal! a\<return>" . dropDownDisplay . "\<return>"
  endif
  execute "normal! a</a>\<return><div class=\"dropdown-menu\" aria-labelledby=\"" . dropDownId . "\">\<return><%= link_to(ChangeDropDownItemDisplay, ChangePath_path, class: 'dropdown-item') %>\<return></div>\<return></div>"
  let @/ = "ChangeDropdownDisplay\\|ChangeDropDownItemDisplay\\|DeleteThis\\|ChangePath\\|ChangeColor\\|ChangeIcon"
endfunction
" Html Ui to Dropdown Item
nnoremap <silent> ,hudi a<%= link_to(ChangeDisplay, ChangePath_path, class: 'dropdown-item') %><esc>/ChangeDisplay\\|ChangePath<return>

let g:iconClasses = 'icon px-3 fs-4 text-ChangeColor mdi mdi-ChangeIcon'
let g:buttonClasses = 'btn btn-ChangeColor'
