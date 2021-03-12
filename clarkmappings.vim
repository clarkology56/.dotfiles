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
"   Ruby / Rails
"     Ruby Inline
"     Ruby Block
"     Rails Models
"     Rails Routes
"     Rails Controllers
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
    nnoremap <silent> ,# I# <esc>0
    nnoremap <silent> ,,# I<delete><delete><esc>0
    nnoremap <silent> ,// I// <esc>0
    nnoremap <silent> ,,// I<delete><delete><delete><esc>0
    nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
    nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0
    "nnoremap <silent> 

  " Misc. mapping
    " Misc. Reload Source
    nnoremap <silent> ,mrs :so ~/.dotfiles/clarkmappings.vim<return>
    " Misc. Puts Helper
    nnoremap <silent> ,mph aputs 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts nil<return>puts ChangeThisPls<esc>/ChangeThisPls<return>
    " go to end
    nnoremap <silent> ,mll $
    " got to beginning
    nnoremap <silent> ,mhh ^


  " Edit mappings
    "
    nmap <silent> ,eas <space>fT/app<return><return>/assets<return><return><esc>:noh<return>
    nnoremap <silent> ,cas :edit app/assets/
    "
    nmap <silent> ,ech <space>fT/app<return><return>/channels<return><return><esc>:noh<return>
    nnoremap <silent> ,cch :edit app/channels/
    "
    nmap <silent> ,eco <space>fT/app<return><return>/controllers<return><return><esc>:noh<return>
    nnoremap <silent> ,cco :edit app/controllers/
    "
    nmap <silent> ,ehe <space>fT/app<return><return>/helpers<return><return><esc>:noh<return>
    nnoremap <silent> ,che :edit app/helpers/
    "
    nmap <silent> ,eja <space>fT/app<return><return>/javascript<return><return><esc>:noh<return>
    nnoremap <silent> ,cja :edit app/javascript/
    "
    nmap <silent> ,ejp <space>fT/app<return><return>/javascript<return><return>/packs<return><return><esc>:noh<return>
    nnoremap <silent> ,cjp :edit app/javascript/packs/
    "
    nmap <silent> ,ejo <space>fT/app<return><return>/jobs<return><return><esc>:noh<return>
    nnoremap <silent> ,cjo :edit app/jobs/
    " Edit app/MAilers
    nmap <silent> ,ema <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
    nnoremap <silent> ,cma :edit app/mailers/
    " Edit app/MOddels
    nmap <silent> ,emo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
    nnoremap <silent> ,cmo :edit app/models/
    " Edit app/mddels/ABility.rb
    nmap <silent> ,eab <space>fT/app<return><return>/models<return><return>/ability.rb<return><return><esc>:noh<return>
    "
    nmap <silent> ,evi <space>fT/app<return><return>/views<return><return><esc>:noh<return>
    nnoremap <silent> ,cvi :edit app/views/
    "
    nmap <silent> ,ecf <space>fT/config<return><return><esc>:noh<return>
    nnoremap <silent> ,ccf :edit config/
    "
    nnoremap <silent> ,ecr :edit config/routes.rb<return>
    "
    nnoremap <silent> ,eds :edit db/schema.rb<return>
    "
    nmap <silent> ,edm <space>fT/db<return><return>/migrate<return><return><esc>:noh<return>
    nnoremap <silent> ,cdm :edit db/migrate/
    "
    nmap <silent> ,eli <space>fT/lib<return><return><esc>:noh<return>
    nnoremap <silent> ,cli :edit lib/
    "
    nmap <silent> ,ete <space>fT/test<return><return><esc>:noh<return>
    nnoremap <silent> ,cte :edit test/
    "
    nmap <silent> ,etc <space>fT/test<return><return>/controllers<return><return><esc>:noh<return>
    nnoremap <silent> ,ctc :edit test/controllers/
    "
    nmap <silent> ,etm <space>fT/test<return><return>/models<return><return><esc>:noh<return>
    nnoremap <silent> ,ctm :edit test/models
    "
    nmap <silent> ,eve <space>fT/vendor<return><return><esc>:noh<return>
    nnoremap <silent> ,cve :edit vendor/



  " Html mappings  
    " Html Elements
      " Html Elements DIv
      nnoremap <silent> ,hedi a<div><esc>o</div><esc>k
      inoremap <silent> ,hedi <div><esc>o</div><esc>k
      " Html Elements PAragraph
      nnoremap <silent> ,hepa a<p></p><esc>hhhh
      inoremap <silent> ,hepa <p></p><esc>hhhh
      " Html Elements SPan
      nnoremap <silent> ,hesp a<span></span><esc>hhhhhhh
      inoremap <silent> ,hesp <span></span><esc>hhhhhhh
      " Html Elements STrong
      nnoremap <silent> ,hest a<strong></strong><esc>hhhhhhhhh
      inoremap <silent> ,hest <strong></strong><esc>hhhhhhhhh
      " Html Elements BUtton
      nnoremap <silent> ,hebu a<button class="btn btn-ChangeThisPls"></button><esc>/ChangeThisPls<return>
      inoremap <silent> ,hebu <button class="btn btn-ChangeThisPls"></button><esc>/ChangeThisPls<return>
      " Html Elements TAble
      nnoremap <silent> ,heta a<table><esc>o</table><esc>k
      inoremap <silent> ,heta <table><esc>o</table><esc>k
      " Html Elements Table capsHead
      nnoremap <silent> ,hetH a<thead><esc>o</thead><esc>k
      inoremap <silent> ,hetH <thead><esc>o</thead><esc>k
      " Html Elements Table Row
      nnoremap <silent> ,hetr a<tr><esc>o</tr><esc>k
      inoremap <silent> ,hetr <tr><esc>o</tr><esc>k
      " Html Elements Table Header cell
      nnoremap <silent> ,heth a<th><esc>o</th><esc>k
      inoremap <silent> ,heth <th><esc>o</th><esc>k
      " Html Elements Table Body
      nnoremap <silent> ,hetb a<tbody><esc>o</tbody><esc>k
      inoremap <silent> ,hetb <tbody><esc>o</tbody><esc>k
      " Html Elements Table Data cell
      nnoremap <silent> ,hetd a<td><esc>o</td><esc>k
      inoremap <silent> ,hetd <td><esc>o</td><esc>k
      " Html Elements Table Footer
      nnoremap <silent> ,hetf a<tfoot><esc>o</tfoot><esc>k
      inoremap <silent> ,hetf <tfoot><esc>o</tfoot><esc>k
      " Html Elements CUstom
      nnoremap <silent> ,hecu a<ChangeThisPls></ChangeThisPls><esc>/ChangeThisPls<return>
      inoremap <silent> ,hecu <ChangeThisPls></ChangeThisPls><esc>/ChangeThisPls<return>
      
    " Html Ruby (erb) 
      " Html Ruby (erb) Erb Entered
      nnoremap <silent> ,hree a<%=  %><esc>hhi
      inoremap <silent> ,hree <%=  %><esc>hhi
      " Html Ruby (erb) ERb
      nnoremap <silent> ,hrer a<%  %><esc>hhi
      inoremap <silent> ,hrer <%  %><esc>hhi
      " Html Ruby (erb) IF
      nnoremap <silent> ,hrif a<% if  %><esc>o<% end %><esc>khhi
      inoremap <silent> ,hrif <% if  %><esc>o<% end %><esc>khhi
      " Html Ruby (erb) If Else
      nnoremap <silent> ,hrie a<% if ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrie <% if ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) ELse
      nnoremap <silent> ,hrel a<% else %><esc>o
      inoremap <silent> ,hrel <% else %><esc>o
      " Html Ruby (erb) Else If
      nnoremap <silent> ,hrei a<% elsif  %><esc>hhi
      inoremap <silent> ,hrei <% elsif  %><esc>hhi
      " Html Ruby (erb) EAch
      nnoremap <silent> ,hrea a<% ChangeThisPls.each do <bar>ChangeThisPls<bar> %><return><% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrea <% ChangeThisPls.each do <bar>ChangeThisPls<bar> %><return><% end %>/ChangeThisPls<return>
      " Html Ruby (erb) Each With index
      nnoremap <silent> ,hrew a<% ChangeThisPls.each_with_index do <bar>ChangeThisPls, index<bar> do %><return><% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrew <% ChangeThisPls.each_with_index do <bar>ChangeThisPls, index<bar> do %><return><% end %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) ENd
      nnoremap <silent> ,hren a<% end %><esc>
      inoremap <silent> ,hren <% end %><esc>
      " Html Ruby (erb) LInk to
      nnoremap <silent> ,hrli a<%= link_to(ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrli <%= link_to(ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Link to Remote 
      nnoremap <silent> ,hrlr a<%= link_to(ChangeThisPls, ChangeThisPls, remote: true, method: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrlr <%= link_to(ChangeThisPls, ChangeThisPls, remote: true, method: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Link to Block 
      nnoremap <silent> ,hrlb a<%= link_to(ChangeThisPls) do %>ChangeThisPls<% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrlb <%= link_to(ChangeThisPls) do %>ChangeThisPls<% end %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Image Tag
      nnoremap <silent> ,hrit a<%= image_tag(ChangeThisPls, alt: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrit <%= image_tag(ChangeThisPls, alt: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Javascript Tag
      nnoremap <silent> ,hrjt a<%= javascript_include_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrjt <%= javascript_include_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) Javascript Pack
      nnoremap <silent> ,hrjp a<%= javascript_pack_tag('ChangeThisPls', 'data-turbolinks-track': 'reload') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrjp <%= javascript_pack_tag('ChangeThisPls', 'data-turbolinks-track': 'reload') %><esc>/ChangeThisPls<return>
      " Html Ruby (erb) StyleSheet
      nnoremap <silent> ,hrss aa<%= stylesheet_link_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hrss <%= stylesheet_link_tag('ChangeThisPls') %><esc>/ChangeThisPls<return>
      
    " Html Form
      " Html Form WIth
      nnoremap <silent> ,hfwi a<%= form_with(scope: 'ChangeThisPls', url: ChangeThisPls, method: :ChangeThisPls) do \|ChangeThisPls_form\| %><esc>o<% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfwi <%= form_with(scope: 'ChangeThisPls', url: ChangeThisPls, method: :ChangeThisPls) do \|ChangeThisPls_form\| %><esc>o<% end %><esc>/ChangeThisPls<return>
      " Html Form Full Errors
      nnoremap <silent> ,hffe a<%= render(partial: 'shared/full_errors', locals: { errors_hash: ChangeThisPls.errors.messages, ian: false }) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hffe <%= render(partial: 'shared/full_errors', locals: { errors_hash: ChangeThisPls.errors.messages, ian: false }) %><esc>/ChangeThisPls<return>
      " Html Form ROw
      nnoremap <silent> ,hfro a<div class="form-row"><esc>o</div><esc>O <backspace><esc>
      inoremap <silent> ,hfro <div class="form-row"><esc>o</div><esc>O <backspace><esc>
      " Html Form GRoupe
      nnoremap <silent> ,hfgr a<div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
      inoremap <silent> ,hfgr <div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
      " Html Form HIdden field
      nnoremap <silent> ,hfhi a<%= ChangeThisPls_form.hidden_field(:ChangeThisPls, value: ChangeThisPls) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfhi <%= ChangeThisPls_form.hidden_field(:ChangeThisPls, value: ChangeThisPls) %><esc>/ChangeThisPls<return>
      " Html Form Hidden field Tag
      nnoremap <silent> ,hfht a<%= hidden_field_tag(:ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfht <%= hidden_field_tag(:ChangeThisPls, ChangeThisPls) %><esc>/ChangeThisPls<return>
      " Html Form LAbel
      nnoremap <silent> ,hfla a<%= ChangeThisPls_form.label(:ChangeThisPls, 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfla <%= ChangeThisPls_form.label(:ChangeThisPls, 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Form Label Block
      nnoremap <silent> ,hflb a<%= ChangeThisPls_form.label(:ChangeThisPls) do %>ChangeThisPls<% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hflb <%= ChangeThisPls_form.label(:ChangeThisPls) do %>ChangeThisPls<% end %><esc>/ChangeThisPls<return>
      " Html Form Label No lable (mainly for styled checkboxes) - in order for
      " rails to leave blank label, have to use block with empty space (" ")
      " otherwise rails will fill content autoamtically
      nnoremap <silent> ,hfln a<%= ChangeThisPls_form.label(:ChangeThisPls) do %> <% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfln <%= ChangeThisPls_form.label(:ChangeThisPls) do %> <% end %><esc>/ChangeThisPls<return>
      " Html Form Label for Checkboxes
      nnoremap <silent> ,hflc a<%= ChangeThisPls_form.label(:ChangeThisPls, 'ChangeThisPls', class: "custom-control-label text-wrap") %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hflc <%= ChangeThisPls_form.label(:ChangeThisPls, 'ChangeThisPls', class: "custom-control-label text-wrap") %><esc>/ChangeThisPls<return>
      " Html Form Text Field
      nnoremap <silent> ,hftf a<%= ChangeThisPls_form.text_field(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hftf <%= ChangeThisPls_form.text_field(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html Form Text Area
      nnoremap <silent> ,hfta a<%= ChangeThisPls_form.text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfta <%= ChangeThisPls_form.text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html Form Rich Text
      nnoremap <silent> ,hfrt a<%= ChangeThisPls_form.rich_text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfrt <%= ChangeThisPls_form.rich_text_area(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html Form Email Field
      nnoremap <silent> ,hfef a<%= ChangeThisPls_form.email_field(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfef <%= ChangeThisPls_form.email_field(:ChangeThisPls, value: ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html Form Checkbox Wrapper
      " this is used by by ,hfcs and ,hfci so if you change this yo umight
      " need to change those as well
      nmap <silent> ,hfcw a<div class="pr-2 custom-control custom-checkbox"><esc>,o,hfcb<esc>,o,hflc<esc>jo</div><esc>/ChangeThisPls<return>
      " Html Form Checkbox Stacked
      nmap <silent> ,hfcs a<div><esc>,o,hfcwcxr1m39dak5<esc>....j,o,hfcwjjo</div><esc>/1m39dak5<return>cgnChangeThisPls<esc>..../ChangeThisPls<return>NNN
      " Html Form Checkbox Inline
      nmap <silent> ,hfci a<div class="d-flex"><esc>,o,hfcwcxr1m39dak5<esc>....j,o,hfcwjjo</div><esc>/1m39dak5<return>cgnChangeThisPls<esc>..../ChangeThisPls<return>NNN
      " Html Form CheckBox
      nnoremap <silent> ,hfcb a<%= ChangeThisPls_form.check_box(:ChangeThisPls, class: 'custom-control-input') %><esc>/ChangeThisPls<return>
      " Html Form Checkbox Long
      nnoremap <silent> ,hfcl a<%= ChangeThisPls_form.check_box(:ChangeThisPls, { class: 'custom-control-input' }, ChangeThisPls, false) %><esc>/ChangeThisPls<return>
      " Html Form Password field
      nnoremap <silent> ,hfpf a<%= ChangeThisPls_form.password_field(:password, class: 'form-control') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfpf <%= ChangeThisPls_form.password_field(:password, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html Form Password Confirmation
      nnoremap <silent> ,hfpc a<%= ChangeThisPls_form.password_field(:password_confirmation, class: 'form-control') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfpc <%= ChangeThisPls_form.password_field(:password_confirmation, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html Form SElect
      nnoremap <silent> ,hfse a<%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfse <%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      " Html Form Select Options for select
      nnoremap <silent> ,hfso a<%= ChangeThisPls_form.select(:ChangeThisPls , options_for_select(ChangeThisPls, ChangeThisPls.ChangeThisPls), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfso <%= ChangeThisPls_form.select(:ChangeThisPls , options_for_select(ChangeThisPls, ChangeThisPls.ChangeThisPls), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      " Html Form Select Grouped options for select
      nnoremap <silent> ,hfsg a<%= ChangeThisPls_form.select(:ChangeThisPls , grouped_options_for_select(ChangeThisPls, ChangeThisPls.ChangeThisPls), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfsg <%= ChangeThisPls_form.select(:ChangeThisPls , grouped_options_for_select(ChangeThisPls, ChangeThisPls.ChangeThisPls), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/ChangeThisPls<return>
      " Html Form Select Block
      nnoremap <silent> ,hfsb a<%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfsb <%= ChangeThisPls_form.select(:ChangeThisPls , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/ChangeThisPls<return>
      " Html Form OPtion
      nnoremap <silent> ,hfop a<option <%= "selected='true'" if ChangeThisPls %> value="<%= ChangeThisPls %>">ChangeThisPls</option><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfop <option <%= "selected='true'" if ChangeThisPls %> value="<%= ChangeThisPls %>">ChangeThisPls</option><esc>/ChangeThisPls<return>
      " Html Form Inline Errors
      nnoremap <silent> ,hfie a<%= render(partial: 'shared/inline_errors', locals: { errors_hash: ChangeThisPls.errors.messages, attribute: :ChangeThisPls, ian: false }) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfie <%= render(partial: 'shared/inline_errors', locals: { errors_hash: ChangeThisPls.errors.messages, attribute: :ChangeThisPls, ian: false }) %><esc>/ChangeThisPls<return>
      " Html Form SUbmit
      nnoremap <silent> ,hfsu a<%= ChangeThisPls_form.submit(:ChangeThisPls, class: 'btn btn-ChangeThisPls') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfsu <%= ChangeThisPls_form.submit(:ChangeThisPls, class: 'btn btn-ChangeThisPls') %><esc>/ChangeThisPls<return>
      " Html Form CUstom Field
      nnoremap <silent> ,hfcu a<%= ChangeThisPls_form.ChangeThisPls(:ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfcu <%= ChangeThisPls_form.ChangeThisPls(:ChangeThisPls, class: 'form-control') %><esc>/ChangeThisPls<return>
      " Html Form Fields For
      nnoremap <silent> ,hfff a<%= ChangeThisPls_form.fields_for(:ChangeThisPls) do \|ChangeThisPls_form\| %><return><% end %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hfff <%= ChangeThisPls_form.fields_for(:ChangeThisPls) do \|ChangeThisPls_form\| %><return><% end %><esc>/ChangeThisPls<return>

    " html partials
      " Html Partial BAsic
      nnoremap <silent> ,hpba a<%= render(partial: 'ChangeThisPls', locals: { ChangeThisPls }) %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hpba <%= render(partial: 'ChangeThisPls', locals: { ChangeThisPls }) %><esc>/ChangeThisPls<return>
      " Html Partial No Locals
      nnoremap <silent> ,hpnl a<%= render(partial: 'ChangeThisPls') %><esc>/ChangeThisPls<return>
      inoremap <silent> ,hpnl <%= render(partial: 'ChangeThisPls') %><esc>/ChangeThisPls<return>

  " ruby mappings 
    
   
    " ruby basics
      " Ruby Basics Each Inline
      nnoremap <silent> ,rbei a.each { <bar><bar>  }<esc>hhhi
      inoremap <silent> ,rbei .each { <bar><bar>  }<esc>hhhi
      " Ruby Basics Each Block 
      nnoremap <silent> ,rbeb a.each do \|ChangeThisPls\|<return>end<esc>/ChangeThisPls<return>
      inoremap <silent> ,rbeb .each do \|ChangeThisPls\|<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics Map Inline
      nnoremap <silent> ,rbmi a.map { <bar><bar>  }<esc>hhhi
      inoremap <silent> ,rbmi .map { <bar><bar>  }<esc>hhhi
      " Ruby Basics Map Block 
      nnoremap <silent> ,rbmb a.map do \|ChangeThisPls\|<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics IF
      nnoremap <silent> ,rbif aif ChangeThisPls<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics If Else
      nnoremap <silent> ,rbie aif ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
      " Ruby Basics ELse
      nnoremap <silent> ,rbel aelse<return>
      " Ruby Basics ElsIf
      nnoremap <silent> ,rbei aelsif ChangeThisPls<esc>/ChangeThisPls<return>

      nnoremap <silent> ,rbde adef <esc>oend<esc>kla
      inoremap <silent> ,rbde def <esc>oend<esc>kla

      nnoremap <silent> ,rbdo ado<return>end<esc>O
      inoremap <silent> ,rbdo do<return>end<esc>O
      " Ruby Basics Can Model based
      nnoremap <silent> ,rbcm acan?(:ChangeThisPls, @ChangeThisPls)<esc>/ChangeThisPls<return>
      " Ruby Basics Can Non-mmodel Model based
      nnoremap <silent> ,rbcn acan?(:ChangeThisPls, :ChangeThisPls)<esc>/ChangeThisPls<return>

  " Rails mappings 
    " rails model mappings
      " Rails Models XX
      nnoremap <silent> ,rmxx iHello, World!<esc>
      " Rails Models Can Model based
      nnoremap <silent> ,rmcm acan [:ChangeThisPls], ChangeThisPls::ChangeThisPls, ChangeThisPls:{ ChangeThisPls: user.ChangeThisPls }<esc>/ChangeThisPls<enter>
      " Rails Models Can Model based Long
      nnoremap <silent> ,rmcl acan [:ChangeThisPls], ChangeThisPls::ChangeThisPls, ChangeThisPls:{ ChangeThisPls: user.ChangeThisPls, ChangeThisPls: { ChangeThisPls: ChangeThisPls::ChangeThisPls.where(ChangeThisPls: ChangeThisPls).ChangeThisPls } }<esc>/ChangeThisPls<enter>
      " Rails Models Can Non-model based
      nnoremap <silent> ,rmcn acan [:ChangeThisPls], :ChangeThisPls<esc>/ChangeThisPls<enter>
      
    " Rails Routes 
      " main routes
        " Rails Routes NAmespace
        nnoremap <silent> ,rrna anamespace :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrna namespace :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
        " Rails Routes REsources
        nnoremap <silent> ,rrre aresources :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrre resources :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>
        " Rails Routes Resources Nested
        nnoremap <silent> ,rrrn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>opost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>oresources :ChangeThisPls, only %i[show update destroy]<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrrn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>opost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>oresources :ChangeThisPls, only %i[show update destroy]<esc>/ChangeThisPls<return>
        " Rails Routes Get Member
        nnoremap <silent> ,rrgm aget 'ChangeThisPls/:id/ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls_ChangeThisPls <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrgm get 'ChangeThisPls/:id/ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls_ChangeThisPls <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/ChangeThisPls<return>
        " Rails Routes GEt (for non-restful routes)
        nnoremap <silent> ,rrge aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrge get 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
      " other routes 
        "
        nnoremap <silent> ,rrsc ascope path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrsc scope path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls do<return>end<esc>/ChangeThisPls<return>
        
        nnoremap <silent> ,rrrl aresources path: :ChangeThisPls, controller: :ChangeThisPls, as: :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrrl resources path: :ChangeThisPls, controller: :ChangeThisPls, as: :ChangeThisPls, only %i[index show create update destroy]<esc>/ChangeThisPls<return>
        
        nnoremap <silent> ,rrra aresources path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls, only %i[] do<return>end<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrra resources path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls, only %i[] do<return>end<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrme amember do<return>end<esc>O <backspace><esc>
        inoremap <silent> ,rrme member do<return>end<esc>O <backspace><esc>
        "
        nnoremap <silent> ,rrgl aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrgl get 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrgn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrgn get ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpo apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrpo post 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpl apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrpl post 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpn apost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrpn post ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpa apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrpa patch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrpl apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrpl patch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrde adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrde delete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,rrdl adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
        inoremap <silent> ,rrdl delete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>

    " Rails Controller mappings
      " Rails Controller Strong Params
      nnoremap <silent> ,rcsp adef ChangeThisPls_params<return>params.require('ChangeThisPls').permit(:ChangeThisPls)<return>end<esc>/ChangeThisPls<return>
      " Rails Controller Strong params Long
      nnoremap <silent> ,rcsl adef ChangeThisPls_params<return>params.require('ChangeThisPls').permit(:ChangeThisPls, ChangeThisPls: [], ChangeThisPls: [:ChangeThisPls, ChangeThisPls: [], ChangeThisPls: [:ChangeThisPls]] )<return>end<esc>/ChangeThisPls<return>
      " Rails Controller Authorize Model based
      nnoremap <silent> ,rcam aauthorize!(:cgn, @cgn)<esc>/ChangeThisPls<return>
      " Rails Controller Authorize Non-model based
      nnoremap <silent> ,rcan aauthorize!(:cgn, :cgn)<esc>/ChangeThisPls<return>
      " Rails Controller REnder
      nnoremap <silent> ,rcre arender 'ChangeThisPls'<esc>/ChangeThisPls<return>
      " Rails Controller Redirect To
      nnoremap <silent> ,rcrt aredirect_to ChangeThisPls<esc>/ChangeThisPls<return>
      

  " javascript mappings 
    " Javascript Vanilla
        " Javascript Vanilla IF
        nnoremap <silent> ,jvif aif (ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        inoremap <silent> ,jvif if (ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        " Javascript Vanilla If Else
        nnoremap <silent> ,jvie aif (ChangeThisPls) {<return>} else {<return>}<esc>/ChangeThisPls<return>
        " Javascript Vanilla ELse
        nnoremap <silent> ,jvel a<space>else {<return>}<esc>O
        inoremap <silent> ,jvel <space>else {<return>}<esc>O
        " Javascript Vanilla Else If
        nnoremap <silent> ,jvei a<space>else if (ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        "
        nnoremap <silent> ,jvfo afor (ChangeThisPls of ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        inoremap <silent> ,jvfo for (ChangeThisPls of ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
        " Javascript Vanilla FUnction
        nnoremap <silent> ,jvfu afunction ChangeThisPls(){<return>}<esc>/ChangeThisPls<return>
        inoremap <silent> ,jvfu function ChangeThisPls(){<return>}<esc>/ChangeThisPls<return>

    " Javascript jQuery   
        " Javascript jQiery SElect
        nnoremap <silent> ,jqse a$()<esc>i
        inoremap <silent> ,jqse $()<esc>i
        " Javascript jQiery Select Class
        nnoremap <silent> ,jqsc a$('.')<esc>hi
        inoremap <silent> ,jqsc $('.')<esc>hi
        " Javascript jQiery Select Id
        nnoremap <silent> ,jqsi a$('#')<esc>hi
        inoremap <silent> ,jqsi $('#')<esc>hi
        " Javascript jQiery Select Attribute
        nnoremap <silent> ,jqsa a$('[ChangeThisPls="ChangeThisPls"]')<esc>/ChangeThisPls<return>
        inoremap <silent> ,jqsa $('[ChangeThisPls="ChangeThisPls"]')<esc>/ChangeThisPls<return>
        " Javascript jQiery Select Data attribute
        nnoremap <silent> ,jqsd a$('[data-ChangeThisPls="ChangeThisPls"]')<esc>/ChangeThisPls<return>
        inoremap <silent> ,jqsd $('[data-ChangeThisPls="ChangeThisPls"]')<esc>/ChangeThisPls<return>
        " Javascript jQiery Document On 
        nnoremap <silent> ,jqdo a$(document).on('ChangeThisPls', 'ChangeThisPls', {}, function(){})<esc>hi<return><esc>/ChangeThisPls<return>
        inoremap <silent> ,jqdo $(document).on('ChangeThisPls', 'ChangeThisPls', {}, function(){})<esc>hi<return><esc>/ChangeThisPls<return>
        " Javascript jQiery Document Ready
        nnoremap <silent> ,jqdr a$(document).ready(function(){<return>ChangeThisPls<return>})<return>$(document).ajaxComplete(function(){<return>ChangeThisPls<return>})<esc>/ChangeThisPls<return>
        inoremap <silent> ,jqdr $(document).ready(function(){<return>ChangeThisPls<return>})<esc>/ChangeThisPls<return>
        " Javascript jQiery Document Ajax complete
        nnoremap <silent> ,jqda a$(document).ajaxComplete(function(){<return>ChangeThisPls<return>})<esc>/ChangeThisPls<return>
        inoremap <silent> ,jqda $(document).ajaxComplete(function(){<return>ChangeThisPls<return>})<esc>/ChangeThisPls<return>
        " Javascript jQiery Element On 
        nnoremap <silent> ,jqeo a$(ChangeThisPls).on('ChangeThisPls', function(){})<esc>hi<return><esc>/ChangeThisPls<return>
        inoremap <silent> ,jqeo $(ChangeThisPls).on('ChangeThisPls', function(){})<esc>hi<return><esc>/ChangeThisPls<return>


  " templates
    " models
      " Templates Models BAse
        nnoremap <silent> ,tmba :read ../templates/models/models/base_model.rb<return>ggdd/ChangeThisPls<return>
      " Templates Models BLank
        nnoremap <silent> ,tmbl :read ../templates/models/models/blank_model.rb<return>ggdd/ChangeThisPls<return>
    
    " controllers
      " Templates Controllers BAse
        nnoremap <silent> ,tcba :read ../templates/controllers/base_controller.rb<return>ggdd/ChangeThisPls<return>
      " Templates Controllers Show Base
        nnoremap <silent> ,tcsb :read ../templates/controllers/actions/show_base.rb<return>/ChangeThisPls<return>
      " Templates Controllers Show for Tab
        nnoremap <silent> ,tcst :read ../templates/controllers/actions/show_tab.rb<return>/ChangeThisPls<return>
      " Templates Controllers Show tab Router
        nnoremap <silent> ,tcsr :read ../templates/controllers/actions/show_router.rb<return>/ChangeThisPls<return>

    " helpers 
      " Templates Helpers BAse
      nnoremap <silent> ,thba :read ../templates/helpers/base_helper.rb<return>ggdd/ChangeThisPls<return>
    " Views
      " Templates Views PAge
      nnoremap <silent> ,tvpa :read ../templates/views/page_frame/pages.html.erb<return>ggdd/ChangeThisPls<return>
      " Templates Views CArd
      nnoremap <silent> ,tvca :read ../templates/views/page_frame/cards.html.erb<return>ggdd/ChangeThisPls<return>
