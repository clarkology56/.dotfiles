" Summary
"   [some random one off stuff]
"   One key comma (o, comments)
"   Misc
"   Edit
"   HTML 
"     HTML Elements
"     HTML Ruby
"     HTML Forms
"     HTML Partials
"   Ruby
"     Ruby Inline
"     Ruby Block
"     Ruby Models
"     Ruby Routes
"     Ruby Controllers
"   Javascript
"     Javascript Vanillia
"     Javascript jQuery
"   Templates
"     Templates Models
"     Templates Controllers
"     Templates Helpers
"       
"   
" Caps lock in insert mode (press ctrl - ^ to toggle)
  " Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
  for c in range(char2nr('A'), char2nr('Z'))
    execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
    execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
  endfor
  " Kill the capslock when leaving insert mode.
  autocmd InsertLeave * set iminsert=0

" insert mode only mappings 
  " single key mappings 
    " prevent return from autocomplete (very annoying because to return you have
    " to hit space then return. Now, tab does autocomplete and return does
    " return
      inoremap <silent> <return> <space><backspace><return>
      inoremap <silent> {{ {<space><space>}<left><left>
      inoremap <silent> <bar><bar> <bar><bar><left>

" normal mode mappings
  " single key mappings

  " comma + single key mappings
    nnoremap <silent> ,o o <backspace><esc>
    nnoremap <silent> ,O O <backspace><esc>comments)
    nnoremap <silent> ,# I#<esc>0
    nnoremap <silent> ,,# I<delete><esc>0
    nnoremap <silent> ,// I//<esc>0
    nnoremap <silent> ,,// I<delete><delete><esc>0
    nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
    nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0
    "nnoremap <silent> 

  " Misc. mapping / messages
    " Misc. Reload Source
    nnoremap <silent> ,mrs :so ~/.dotfiles/clarkmappings.vim<return>
    " Misc. DD but combine to previous line instead of delete line
    " NOTE: this will delete first word if line has no indentation...
    nmap <silent> ,mdd I<esc>vvxi<backspace><esc>
    " Misc. Dd but combine to Forward line instead of delete line
    " NOTE: this will delete first word if line has no indentation...
    nmap <silent> ,mdf A<esc>whvvxi<backspace><esc>
    nnoremap <silent> ,mminsert_input a<%# ChangeThisPls - Replace this with HTML Form input %><esc>/ChangeThisPls<return>

  " Edit mappings
    "
    nmap <silent> ,eaas <space>fT/app<return><return>/assets<return><return><esc>:noh<return>
    nnoremap <silent> ,caas :edit app/assets/
    " Edit App Assets Css (stylesheets)
    nmap <silent> ,eaac <space>fT/app<return><return>/assets<return><return>/stylesheets<return><return><esc>:noh<return>
    nnoremap <silent> ,caac :edit app/assets/stylesheets/
    "
    nmap <silent> ,each <space>fT/app<return><return>/channels<return><return><esc>:noh<return>
    nnoremap <silent> ,cach :edit app/channels/
    "
    nmap <silent> ,eaco <space>fT/app<return><return>/controllers<return><return><esc>:noh<return>
    nnoremap <silent> ,caco :edit app/controllers/
    "
    nmap <silent> ,eahe <space>fT/app<return><return>/helpers<return><return><esc>:noh<return>
    nnoremap <silent> ,cahe :edit app/helpers/
    "
    nmap <silent> ,eaja <space>fT/app<return><return>/javascript<return><return><esc>:noh<return>
    nnoremap <silent> ,caja :edit app/javascript/
    "
    nmap <silent> ,eajp <space>fT/app<return><return>/javascript<return><return>/packs<return><return><esc>:noh<return>
    nnoremap <silent> ,cajp :edit app/javascript/packs/
    "
    nmap <silent> ,eajo <space>fT/app<return><return>/jobs<return><return><esc>:noh<return>
    nnoremap <silent> ,cajo :edit app/jobs/
    " Edit App/MAilers
    nmap <silent> ,eama <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
    nnoremap <silent> ,cama :edit app/mailers/
    " Edit App/MOddels
    nmap <silent> ,eamo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
    nnoremap <silent> ,camo :edit app/models/
    " Edit App/Mddels/aBility.rb Cancancan
    nmap <silent> ,eamc <space>fT/app<return><return>/models<return><return>/ability.rb<return><return><esc>:noh<return>
    "
    nmap <silent> ,eavi <space>fT/app<return><return>/views<return><return><esc>:noh<return>
    nnoremap <silent> ,cavi :edit app/views/
    "
    nmap <silent> ,econ <space>fT/config<return><return><esc>:noh<return>
    nnoremap <silent> ,ccon :edit config/
    "
    nnoremap <silent> ,ecro :edit config/routes.rb<return>
    "
    nnoremap <silent> ,edsc :edit db/schema.rb<return>
    "
    nmap <silent> ,edmi <space>fT/db<return><return>/migrate<return><return><esc>:noh<return>
    nnoremap <silent> ,cdmi :edit db/migrate/
    "
    nmap <silent> ,elib <space>fT/lib<return><return><esc>:noh<return>
    nnoremap <silent> ,clib :edit lib/
    "
    nmap <silent> ,etes <space>fT/test<return><return><esc>:noh<return>
    nnoremap <silent> ,ctes :edit test/
    "
    nmap <silent> ,etco <space>fT/test<return><return>/controllers<return><return><esc>:noh<return>
    nnoremap <silent> ,ctco :edit test/controllers/
    "
    nmap <silent> ,etmo <space>fT/test<return><return>/models<return><return><esc>:noh<return>
    nnoremap <silent> ,ctmo :edit test/models/
    " Edit Test FIxtures
    nmap <silent> ,etfi <space>fT/test<return><return>/fixtures<return><return><esc>:noh<return>
    nnoremap <silent> ,ctfi :edit test/fixtures/
    "
    nmap <silent> ,even <space>fT/vendor<return><return><esc>:noh<return>
    nnoremap <silent> ,cven :edit vendor/



  " Html mappings  
    " Html Elements
      " Html Elements ATtributes
      nnoremap <silent> ,heat a <return>id="ChangeThisPls" <return>class="ChangeThisPls" <return>style="ChangeThisPls" <return>data-ChangeThisPls="ChangeThisPls"<return><esc>/ChangeThisPls<return>
      " Html Elements DIv
      nnoremap <silent> ,hedi a<div><return>ChangeThisPls<return></div><esc>/ChangeThisPls<return>
      " Html Elements PAragraph
      nnoremap <silent> ,hepa a<p><return>ChangeThisPls<return></p><esc>/ChangeThisPls<return>
      " Html Elements SPan
      nnoremap <silent> ,hesp a<span>ChangeThisPls</span><esc>/ChangeThisPls<return>
      " Html Elements STrong
      nnoremap <silent> ,hest a<strong>ChangeThisPls</strong><esc>/ChangeThisPls<return>
      " Html Elements BUtton
      nnoremap <silent> ,hebu a<button class="btn btn-ChangeThisPls">ChangeThisPls</button><esc>/ChangeThisPls<return>
      " Html Elements TAble
      nnoremap <silent> ,heta a<table><esc>o</table><esc>k
      " Html Elements Table capsHead
      nnoremap <silent> ,hetH a<thead><esc>o</thead><esc>k
      " Html Elements Table Row
      nnoremap <silent> ,hetr a<tr><esc>o</tr><esc>k
      " Html Elements Table Header cell
      nnoremap <silent> ,heth a<th><esc>o</th><esc>k
      " Html Elements Table Body
      nnoremap <silent> ,hetb a<tbody><esc>o</tbody><esc>k
      " Html Elements Table Data cell
      nnoremap <silent> ,hetd a<td><esc>o</td><esc>k
      " Html Elements Table Footer
      nnoremap <silent> ,hetf a<tfoot><esc>o</tfoot><esc>k
      " Html Elements CUstom
      nnoremap <silent> ,hecu a<ChangeThisPls></ChangeThisPls><esc>/ChangeThisPls<return>
      
    " Html Ruby (erb) 
      " Html Ruby (erb) ERb
      nnoremap <silent> ,hrer a<%  %><esc>hhi
      " Html Ruby (erb) Erb Entered
      nnoremap <silent> ,hree a<%=  %><esc>hhi
      " Html Ruby (erb) Erb # comment
      nnoremap <silent> ,hre# a<%#  %><esc>hhi
      " Html Ruby (erb) IF
      nnoremap <silent> ,hrif a<% if  %><esc>o<% end %><esc>khhi
      " Html Ruby (erb) If Else
      nnoremap <silent> ,hrie a<% if ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) ELse
      nnoremap <silent> ,hrel a<% else %><esc>o
      " Html Ruby (erb) Else If
      nnoremap <silent> ,hrei a<% elsif  %><esc>hhi
      " Html Ruby (erb) EAch
      nnoremap <silent> ,hrea a<% ChangeThisPls.each do <bar>ChangeThisPls<bar> %><return><% end %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Each With index
      nnoremap <silent> ,hrew a<% ChangeThisPls.each_with_index do <bar>ChangeThisPls, index<bar> do %><return><% end %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) ENd
      nnoremap <silent> ,hren a<% end %><esc>
      " Html Ruby (erb) Link To
      nnoremap <silent> ,hrlt a<%= link_to(ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Link to Remote 
      nnoremap <silent> ,hrlr a<%= link_to(ChangeThisPls, ChangeThisPls, remote: true, method: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Link to Block 
      nnoremap <silent> ,hrlb a<%= link_to(ChangeThisPls) do %>ChangeThisPls<% end %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Image Tag
      nnoremap <silent> ,hrit a<%= image_tag(ChangeThisPls, alt: 'ChangeThisPls', width: 'ChangeThisPls', height: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Javascript Tag
      nnoremap <silent> ,hrjt a<%= javascript_include_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Javascript Pack
      nnoremap <silent> ,hrjp a<%= javascript_pack_tag('ChangeThisPls', 'data-turbolinks-track': 'reload') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) StyleSheet
      nnoremap <silent> ,hrss aa<%= stylesheet_link_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Partial
      nnoremap <silent> ,hrpa a<%= render(partial: 'ChangeThisPls', locals: { ChangeThisPls }) %><esc>/ChangeThisPls<return>
      " Html Ruby Puts Debugger
      nnoremap <silent> ,hrpd a<% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts nil %><return><% puts 'ChangeLabel:' %><return><% puts ChangeThisPls %><esc>/ChangeLabel\\|ChangeThisPls<return>
      
    " Html Form
      " Html Form WIth
      nnoremap <silent> ,hfwi a<%= form_with(scope: 'ChangeThisPls', url: ChangeThisPls, method: :ChangeThisPls) do \|ChangeThisPls_form\| %><esc>o<% end %><esc>/ChangeThisPls<return>
      " Html Form Full Errors
      nnoremap <silent> ,hffe a<%= render(partial: 'shared/full_errors', locals: { errors_hash: ChangeThisPls.errors.messages, ian: false }) %><esc>/ChangeThisPls<return>
      " Html Form Fields For
      nnoremap <silent> ,hfff a<%= ChangeThisPls_form.fields_for(:ChangeThisPls) do \|ChangeThisPls_form\| %><return><% end %><esc>/ChangeThisPls<return>
      " Html Form LAbel
      nnoremap <silent> ,hfla a<%= ChangeThisPls_form.label(:ChangeThisPls, 'ChangeThisPls', class: 'col-form-label') %><esc>/ChangeThisPls<return>
      " Html Form Label Block
      nnoremap <silent> ,hflb a<%= ChangeThisPls_form.label(:ChangeThisPls, class: 'col-form-label') do %>ChangeThisPls<% end %><esc>/ChangeThisPls<return>
      " Html Form Label for Checkboxes
      " NOTE: this is used by the checkbox mappings so if you chnage this, you
      " need to update those as well...
      nnoremap <silent> ,hflc a<%= ChangeThisPls_form.label(:ChangeThisPls, 'ChangeThisPls', class: "custom-control-label text-wrap") %><return><%# NOTE: for blank label, make this a block with a space (" ") between the do and end %><esc>/ChangeThisPls<return>
      " Html Form Label Tag
      nnoremap <silent> ,hflt a<%= label_tag(:ChangeThisPls, 'ChangeThisPls', class: 'col-form-label') %><esc>/ChangeThisPls<return>

    " Html form Show elements
      " Html form Show Left Label wrapper
      nmap <silent> ,hsll a<div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group col-12 pr-0"><return><%= label_tag(:ChangeThisPls, 'ChangeThisPls:', class: 'col-form-label', style: 'hyphens: auto;') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html form Show Group %><return></div><return></div><return></div><esc>/ChangeThisPls\\|DeleteThis<return>
      " Html form Show ROw
      nmap <silent> ,hsro a<div class="form-row"><return></div><esc>,O
      " Html form Show Group 1
      nmap <silent> ,hsg1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Html form Show Group 2
      nmap <silent> ,hsg2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Html form Show Group 3
      nmap <silent> ,hsg3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Html form Show Group 4
      nmap <silent> ,hsg4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label tag if top label %><esc>,o,hssio</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Html form Show element SImple
      nnoremap <silent> ,hssi a<div class="sse">ChangeThisPls</div><esc>/ChangeThisPls<return>

    " Html form Inputs
      " Html form Input Left Label wrapper
      nmap <silent> ,hill a<div class="row mb-2"><return><div class="col-12 col-sm-2 pr-0"><return><div class="form-row"><return><div class="form-group col-12 pr-0"><return><%= ChangeThisPls_form.label(:ChangeThisPls, 'ChangeThisPls:', class: 'col-form-label', style: 'hyphens: auto;') %><return></div><return></div><return></div><return><div class="col-12 col-sm-10"><return><div class="form-row"><return><%#<delete> DeleteThis - insert Html form Input Group %><return></div><return></div><return></div><esc>/ChangeThisPls\\|DeleteThis<return>
      " Html form Input ROw
      nmap <silent> ,hiro ,hsro
      " Html form Input Group 1
      nmap <silent> ,hig1 a<div class="form-group col-12"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input,o,hiiejo</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Html form Input Group 2
      nmap <silent> ,hig2 a<div class="form-group col-12 col-sm-6"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input,o,hiiejo</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Html form Input Group 3
      nmap <silent> ,hig3 a<div class="form-group col-12 col-sm-4"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input,o,hiiejo</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Html form Input Group 4
      nmap <silent> ,hig4 a<div class="form-group col-12 col-sm-6 col-md-3"><return><%#<delete> DeleteThis: insert label if top label %><esc>,o,mminsert_input,o,hiiejo</div><esc>/DeleteThis\\|ChangeThisPls<return>
      " Htmo form Input ATtrubutes common
      nnoremap <silent> ,hiat a, <return>autofocus: true, <return>autocomplete: 'ChangeThisPls', <return>placeholder: 'ChangeThisPls', <return>required: true <return><esc>/ChangeThisPls<return>
      " Htmo form Input common ATtrubutes full
      nnoremap <silent> ,hiaT a, <return>id: 'ChangeThisPls', <return>name: 'ChangeThisPls', <return>type: 'ChangeThisPls', <return>class: 'ChangeThisPls', <return>value: 'ChangeThisPls', <return>autofocus: true, <return>autocomplete: 'ChangeThisPls', <return>placeholder: 'ChangeThisPls', <return>required: true, <return>size: 'ChangeThisPls', <return>maxlength: 'ChangeThisPls', <return>min: 'ChangeThisPls', <return>max: 'ChangeThisPls', <return>step: 'ChangeThisPls', <return>checked: true, <return>readonly: true, <return>disabled: true, <return>multiple: true <return><esc>/ChangeThisPls<return>
      " Htmo form Input Attrubutes Other
      nnoremap <silent> ,hiao a, size: 'ChangeThisPls', <return>maxlength: 'ChangeThisPls', <return>min: 'ChangeThisPls', <return>max: 'ChangeThisPls', <return>step: 'ChangeThisPls', <return>checked: true, <return>readonly: true, <return>disabled: true, <return>multiple: true <return><esc>/ChangeThisPls<return>
      " Html form Input HIdden field
      nnoremap <silent> ,hihf a<%= ChangeThisPls_form.hidden_field(:ChangeThisPls, value: ChangeThisPls) %><esc>/ChangeThisPls<return>
      " Html form Input Hidden field Tag
      nnoremap <silent> ,hiht a<%= hidden_field_tag(:ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
      " Html form Input Text Field
      nnoremap <silent> ,hitf a<%= ChangeThisPls_form.text_field(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html form Input Text Area
      nnoremap <silent> ,hita a<%= ChangeThisPls_form.text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html form Input Rich Text
      nnoremap <silent> ,hirt a<%= ChangeThisPls_form.rich_text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html form Input Email Field
      nnoremap <silent> ,hief a<%= ChangeThisPls_form.email_field(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html form Input Checkbox Stacked
      nmap <silent> ,hics a<div><esc>,o,hicwcgnxr1m39dak5<esc>....jj,o,hicwjjjo</div><esc>/xr1m39dak5<return>cgnChangeThisPls<esc>..../ChangeThisPls<return>NNNNN
      " Html form Input Checkbox Inline
      nmap <silent> ,hici a<div class="d-flex"><esc>,o,hicwcgnxr1m39dak5<esc>....jj,o,hicwjjjo</div><esc>/xr1m39dak5<return>cgnChangeThisPls<esc>..../ChangeThisPls<return>NNNNN
      " Html form Input Checkbox Wrapper
      " this is used by by ,hics and ,hici so if you change this you might
      " need to change those as well
      nmap <silent> ,hicw a<div class="pr-2 custom-control custom-checkbox"><esc>,o,hicb<esc>,o,hflc<esc>jjo</div><esc>/ChangeThisPls<return>
      " Html form Input CheckBox
      " this is used by ,hicw so if you change this you might need to change
      " ,hicw as well
      nnoremap <silent> ,hicb a<%= ChangeThisPls_form.check_box(:ChangeThisPls, class: 'custom-control-input') %><esc>/ChangeThisPls<return>
      " Html form Input CheckBox full
      nnoremap <silent> ,hicB a<%= ChangeThisPls_form.check_box(:ChangeThisPls, { class: 'custom-control-input' }, ChangeThisPls, false) %><esc>/ChangeThisPls<return>
      " Html form Input Password field
      nnoremap <silent> ,hipf a<%= ChangeThisPls_form.password_field(:password, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html form Input Password Confirmation
      nnoremap <silent> ,hipc a<%= ChangeThisPls_form.password_field(:password_confirmation, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html form Input SElect
      nnoremap <silent> ,hise a<%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      " Html form Input Select Options for select
      nnoremap <silent> ,hiso a<%= ChangeThisPls_form.select(:ChangeThisPls , options_for_select(ChangeThisPls, ChangeThisPls), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      " Html form Input Select Grouped options for select
      nnoremap <silent> ,hisg a<%= ChangeThisPls_form.select(:ChangeThisPls , grouped_options_for_select(ChangeThisPls, ChangeThisPls), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      " Html form Input Select Block
      nnoremap <silent> ,hisb a<%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/ChangeThisPls<return>
      " Html form Input OPtion
      nnoremap <silent> ,hiop a<option <%= "selected='true'" if ChangeThisPls %> value="<%= ChangeThisPls %>">ChangeThisPls</option><esc>/ChangeThisPls<return>
      " Html form Input Inline Errors
      nnoremap <silent> ,hiie a<%= render(partial: 'shared/inline_errors', locals: { errors_hash: ChangeThisPls.errors.messages, attribute: :ChangeThisPls, include_names: false }) %><esc>/ChangeThisPls<return>
      " Html form Input SUbmit
      nnoremap <silent> ,hisu a<%= ChangeThisPls_form.submit(:ChangeThisPls, class: 'btn btn-ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Torm Submit with Image
      nnoremap <silent> ,htsi a<%= image_submit_tag(ChangeThisPls, alt: 'ChangeThisPls', width: 'ChangeThisPls', height: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Form CUstom Field
      nnoremap <silent> ,hicu a<%= ChangeThisPls_form.ChangeThisPls(:ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
            



  " ruby mappings 
    " ruby basics
      " Ruby Basics Puts Debugger
      nnoremap <silent> ,rbpd aputs 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts nil<return>puts 'ChangeLabel:'<return>puts ChangeThisPls<esc>/ChangeLabel\\|ChangeThisPls<return>
      " Ruby Basics Each Inline
      nnoremap <silent> ,rbei aeach { <bar><bar>  }<esc>hhhi
      " Ruby Basics Each Block 
      nnoremap <silent> ,rbeb aeach do \|ChangeThisPls\|<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics Map Inline
      nnoremap <silent> ,rbmi amap { <bar><bar>  }<esc>hhhi
      " Ruby Basics Map Block 
      nnoremap <silent> ,rbmb amap do \|ChangeThisPls\|<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics IF
      nnoremap <silent> ,rbif aif ChangeThisPls<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics If Else
      nnoremap <silent> ,rbie aif ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics ELse
      nnoremap <silent> ,rbel aelse<return>
      " Ruby Basics ElsIf
      nnoremap <silent> ,rbei aelsif ChangeThisPls<esc>/ChangeThisPls<return>

      nnoremap <silent> ,rbde adef <esc>oend<esc>kla

      nnoremap <silent> ,rbdo ado<return>end<esc>O
      " Ruby Basics Can Model based
      nnoremap <silent> ,rbcm acan?(:ChangeNamespace_ChangePermission, @ChangeModel)<esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel<return>
      " Ruby Basics Can Non-mmodel Model based
      nnoremap <silent> ,rbcn acan?(:ChangeNamespace_ChangeVerb, :ChangeObjects)<esc>/ChangeNamespace\\|ChangeVerb\\|ChangeObjects<return>

    " Ruby model mappings
      " Ruby Models XX
      nnoremap <silent> ,rmxx iHello, World!<esc>
      " Ruby Models Can Model based
      nnoremap <silent> ,rmcm acan [:ChangeNamespace_ChangePermission], ChangeModel, ChangeMethod: user.ChangeValue<esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel\\|ChangeMethod\\|ChangeValue<enter>
      " Ruby Models Can Model based full
      nnoremap <silent> ,rmcM acan [:ChangeNamespace_ChangePermission], ChangeModel, ChangeMethod: user.ChangeValue, ChangeMethod: [ChangeValue], ChangeMethod: { ChangeMethod: user.ChangeValue } <esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel\\|ChangeMethod\\|ChangeValue<enter>
      " Ruby Models Can Non-model based
      nnoremap <silent> ,rmcn acan [:ChangeNamespace_ChangeVerb], :ChangeObjects<esc>/ChangeNamespace\\|ChangeVerb\\|ChangeObjects<enter>
      
    " Ruby Routes 
      " main routes
        " Ruby Routes NAmespace
        nnoremap <silent> ,rrna anamespace :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
        " Ruby Routes REsources
        nnoremap <silent> ,rrre aresources :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>
        " Ruby Routes Resources Nested
        nnoremap <silent> ,rrrn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>opost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>oresources :ChangeThisPls, only %i[show update destroy]<esc>/ChangeThisPls<return>
        " Ruby Routes Get Member
        nnoremap <silent> ,rrgm aget 'ChangeThisPls/:id/ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls_ChangeThisPls <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/ChangeThisPls<return>
        " Ruby Routes GEt (for non-restful routes)
        nnoremap <silent> ,rrge aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
      " other routes 
        "
        nnoremap <silent> ,rrsc ascope path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
        " Ruby Routes REsources full
        nnoremap <silent> ,rrrE aresources path: :ChangeThisPls, controller: :ChangeThisPls, as: :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>
        
        nnoremap <silent> ,rrra aresources path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls, only %i[] do<return>end<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrme amember do<return>end<esc>O <backspace><esc>
        " Ruby Routes GEt full (for non-restful routes)
        nnoremap <silent> ,rrgE aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrgn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpo apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpO apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpn apost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpa apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpA apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrde adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrdE adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>

    " Ruby Controller mappings
      " Ruby Controller Strong Params
      nnoremap <silent> ,rcsp adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttribute)<return>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttribute<return>
      " Ruby Controller Strong Params full
      nnoremap <silent> ,rcsP adef ChangeName_params<return>params.require('ChangeRequire').permit(:ChangeAttribute,<return>ChangeArrayAttribute: [],<return>ChangeChildModel: [:ChangeAttribue],<return>ChangeChildModels: [ChangeChildModel: [:ChangeAttribute]])<return>end<esc>/ChangeName\\|ChangeRequire\\|ChangeAttribute\\|ChangeArrayAttribute\\|ChangeChildModels\\|ChangeChildModel<return>
      " Ruby Controller Authorize Model based
      nnoremap <silent> ,rcam aauthorize!(:ChangeNamespace_ChangePermission, @ChangeModel)<esc>/ChangeNamespace\\|ChangePermission\\|ChangeModel<return>
      " Ruby Controller Authorize Non-model based
      nnoremap <silent> ,rcan aauthorize!(:ChangeNamespace_ChangeVerb, :ChangeObjects)<esc>/ChangeNamespace\\|ChangeVerb\\|ChangeObjects<return>
      " Ruby Controller Accessible By
      nnoremap <silent> ,rcab aChangeModel.accessible_by(current_ability, :ChangeNameSpace_ChangePermission)<esc>/ChangeModel\\|ChangeNameSpace\\|ChangePermission<enter>
      " Ruby Controller Accessible By full
      nnoremap <silent> ,rcaB a@pagy, @ChangeLoads = pagy(ChangeModel.accessible_by(current_ability, :ChangeNamespace_ChangePermission).search(params[:ChangeLoads_search]).index_scope)<esc>/ChangeLoads\\|ChangeModel\\|ChangeNameSpace\\|ChangePermission<enter>
      " Ruby Controller REnder
      nnoremap <silent> ,rcre arender 'ChangeTemplate'<esc>/ChangeTemplate<return>
      " Ruby Controller Redirect To
      nnoremap <silent> ,rcrt aredirect_to Change_url<esc>/Change_url<return>
      " Ruby Controller Model impersonator New
      nnoremap <silent> ,rcmn a@ChangeThisPls = ModelImpersonator.new<esc>/ChangeThisPls<return>
      " Ruby Controller Model impersonator set Value
      nnoremap <silent> ,rcmv a@ChangeThisPls.set_value(:ChangeAttribute, ChangeValue)<esc>/ChangeAttribute\\|ChangeValue<return>
      " Ruby Controller Model impersonator add Error Message
      nnoremap <silent> ,rcme a@ChangeThisPls.add_error_message(:ChangeAttribute, ChangeMessage)<esc>/ChangeAttribute\\|ChangeMessage<return>
      

  " javascript mappings 
    " Javascript Vanilla
        " Javascript Vanilla IF
        nnoremap <silent> ,jvif aif (ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        " Javascript Vanilla If Else
        nnoremap <silent> ,jvie aif (ChangeThisPls) {<return>} else {<return>}<esc>/ChangeThisPls<return>
        " Javascript Vanilla ELse
        nnoremap <silent> ,jvel a<space>else {<return>}<esc>O
        " Javascript Vanilla Else If
        nnoremap <silent> ,jvei a<space>else if (ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        " Javascrip Vanilla FOr
        nnoremap <silent> ,jvfo afor (ChangeThisPls of ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        " Javascript Vanilla FUnction
        nnoremap <silent> ,jvfu afunction ChangeThisPls(){<return>}<esc>/ChangeThisPls<return>
        " Javascript Vanilla Get Attribute
        nnoremap <silent> ,jvga agetAttribute('ChangeAttribute')<esc>/ChangeAttribute<return>

    " Javascript jQuery   
        " Javascript jQiery SElect
        nnoremap <silent> ,jqse a$(ChangeSelector)<esc>/ChangeSelector<return>
        " Javascript jQiery Select Class
        nnoremap <silent> ,jqsc a$('.ChangeClass')<esc>/ChangeClass<return>
        " Javascript jQiery Select Id
        nnoremap <silent> ,jqsi a$('#ChangeId')<esc>/ChangeId<return>
        " Javascript jQiery Select Attribute
        nnoremap <silent> ,jqsa a$('[ChangeAttribute="ChangeValue"]')<esc>/ChangeAttribute\\|ChangeValue<return>
        " Javascript jQiery Select Data attribute
        nnoremap <silent> ,jqsd a$('[data-ChangeAttribute="ChangeValue"]')<esc>/ChangeAttribute\\|ChangeValue<return>
        " Javascript jQiery Document On 
        nnoremap <silent> ,jqdo a$(document).on('ChangeEvent', 'ChangeSelectors', {}, function(event){})<esc>hi<return><esc>/ChangeEvent\\|ChangeSelectors<return>
        " Javascript jQiery Document Ready
        nnoremap <silent> ,jqdr a$(document).ready(function(){<return>ChangeThisPls<return>})<return>$(document).ajaxComplete(function(){<return>ChangeThisPls<return>})<esc>/ChangeThisPls<return>
        " Javascript jQiery Document Ajax complete
        nnoremap <silent> ,jqda a$(document).ajaxComplete(function(){<return>ChangeThisPls<return>})<esc>/ChangeThisPls<return>
        " Javascript jQiery Element On 
        nnoremap <silent> ,jqeo a$(ChangeThisPls).on('ChangeThisPls', function(){})<esc>hi<return><esc>/ChangeThisPls<return>


  " templates
    " models
      " Templates Models BAse
        nnoremap <silent> ,tmba :read ../templates/models/models/base_model.rb<return>ggdd/ChangeThisPls<return>
      " Templates Models BLank
        nnoremap <silent> ,tmbl :read ../templates/models/models/blank_model.rb<return>ggdd/ChangeThisPls<return>
    
    " controllers
      " Templates Controllers BAse
        nnoremap <silent> ,tcba :read ../templates/controllers/base_controller.rb<return>ggdd/ChangeThisPls<return>
      " Templates Controllers Index Base
        nnoremap <silent> ,tcib :read ../templates/controllers/actions/index_base.rb<return>/ChangeLoads\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeVerb\\|ChangeObjects<return>
      " Templates Controllers Show Base
        nnoremap <silent> ,tcsb :read ../templates/controllers/actions/show_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission<return>
      " Templates Controllers Show Tab Router 
        nnoremap <silent> ,tcsr :read ../templates/controllers/actions/show_router.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeUrl<return>
      " Templates Controllers Show for Tab
        nnoremap <silent> ,tcst :read ../templates/controllers/actions/show_tab.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeTab<return>
      " Templates Controllers New Base
        nmap <silent> ,tcnb ,tcsb/show<return>cgnnew<esc>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission<return>
      " Templates Controllers Create Base
        nnoremap <silent> ,tccb :read ../templates/controllers/actions/create_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeAttributes\\|DeleteThis\\|ChangeNamespace\\|ChangePermission\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
      " Templates Controllers Edit Base
        nmap <silent> ,tceb ,tcsb/show<return>cgnedit<esc>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission<return>
      " Templates Controllers Update Base
        nnoremap <silent> ,tcub :read ../templates/controllers/actions/update_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|DeleteThis\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>
      " Templates Controllers Destroy Base
        nnoremap <silent> ,tcdb :read ../templates/controllers/actions/destroy_base.rb<return>/ChangeLoad\\|ChangeModel\\|ChangeNamespace\\|ChangePermission\\|ChangeObject\\|ChangeUrlHelper\\|ChangeTemplate<return>

    " helpers 
      " Templates Helpers BAse
      nnoremap <silent> ,thba :read ../templates/helpers/base_helper.rb<return>ggdd/ChangeThisPls<return>
      "
    " Views
      " Templates Views PAge
      nnoremap <silent> ,tvpa :read ../templates/views/page_frame/pages.html.erb<return>ggdd/ChangeThisPls<return>
      " Templates Views TAbs
      nnoremap <silent> ,tvta :read ../templates/views/page_frame/tabs.html.erb<return>ggdd/ChangeThisPls<return>
      " Templates Views CArd
      nnoremap <silent> ,tvca :read ../templates/views/page_frame/cards.html.erb<return>ggdd/ChangeThisPls<return>
      " Templates Views Card body Single
      nnoremap <silent> ,tvcs :read ../templates/views/card_body_options/single.html.erb<return>/ChangeThisPls<return>
      " Templates Views Top label Edit
      nnoremap <silent> ,tvtb :read ../templates/views/form_options/top_label_edit.html.erb<return>/ChangeThisPls<return>
      " Templates views non-standard Forms Array Simple
      nnoremap <silent> ,tfas :read ../templates/views/non_standard_forms/array_simple.html.erb<return>/ChangeParentForm\\|ChangeAttributes\\|ChangeModels\\|ChangeModel\\|ChangeAttribute\\|ReplaceThis\\|DeleteThis:<return>
      " Templates views non-standard Forms Array Hash
      nnoremap <silent> ,tfah :read ../templates/views/non_standard_forms/array_hash.html.erb<return>/ChangeParentForm\\|ChangeModels\\|ChangeModel\\|ReplaceThis\\|DeleteThis:\\|ChangeAttribute<return>
