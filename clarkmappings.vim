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
    nnoremap <silent> ,O O <backspace><esc>
    nnoremap <silent> ,# I# <esc>0
    nnoremap <silent> ,,# I<delete><delete><esc>0
    nnoremap <silent> ,// I// <esc>0
    nnoremap <silent> ,,// I<delete><delete><delete><esc>0
    nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
    nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0

  " Misc. mapping
    " Misc. Reload Source
    nnoremap <silent> ,mrs :so ~/.dotfiles/clarkmappings.vim<return>
    " Misc. Puts Helper
    nnoremap <silent> ,mph aputs 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts nil<return><esc>


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
    "
    nmap <silent> ,ema <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
    nnoremap <silent> ,cma :edit app/mailers/
    "
    nmap <silent> ,emo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
    nnoremap <silent> ,cmo :edit app/models/
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
      nnoremap <silent> ,hebu a<button class="btn btn-Change"></button><esc>/Change<returreturn>
      inoremap <silent> ,hebu <button class="btn btn-Change"></button><esc>/Change<returreturn>
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
      nnoremap <silent> ,hecu a<Change></Change><esc>/Change<returreturn>
      inoremap <silent> ,hecu <Change></Change><esc>/Change<returreturn>
      
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
      nnoremap <silent> ,hrie a<% if Change %><esc>o<% else %><esc>o<% end %><esc>/Change<returreturn>
      inoremap <silent> ,hrie <% if Change %><esc>o<% else %><esc>o<% end %><esc>/Change<returreturn>
      " Html Ruby (erb) ELse
      nnoremap <silent> ,hrel a<% else %><esc>o
      inoremap <silent> ,hrel <% else %><esc>o
      " Html Ruby (erb) Else If
      nnoremap <silent> ,hrei a<% elsif  %><esc>hhi
      inoremap <silent> ,hrei <% elsif  %><esc>hhi
      " Html Ruby (erb) EAch
      nnoremap <silent> ,hrea a<% Change.each do <bar>Change<bar> %><return><% end %><esc>/Change<returreturn>
      inoremap <silent> ,hrea <% Change.each do <bar>Change<bar> %><return><% end %>/Change<returreturn>
      " Html Ruby (erb) Each with index
      nnoremap <silent> ,hrei a<% Change.each_with_index do <bar>Change, index<bar> do %><return><% end %>/Change<returreturn>
      inoremap <silent> ,hrei <% Change.each_with_index do <bar>Change, index<bar> do %><return><% end %>/Change<returreturn>
      " Html Ruby (erb) ENd
      nnoremap <silent> ,hren a<% end %><esc>
      inoremap <silent> ,hren <% end %><esc>
      " Html Ruby (erb) LInk to
      nnoremap <silent> ,hrli a<%= link_to(Change, Change) %><esc>/Change<returreturn>
      inoremap <silent> ,hrli <%= link_to(Change, Change) %><esc>/Change<returreturn>
      " Html Ruby (erb) Link to Remote 
      nnoremap <silent> ,hrlr a<%= link_to(Change, Change, remote: true, method: 'Change') %><esc>/Change<returreturn>
      inoremap <silent> ,hrlr <%= link_to(Change, Change, remote: true, method: 'Change') %><esc>/Change<returreturn>
      " Html Ruby (erb) Link to Block 
      nnoremap <silent> ,hrlb a<%= link_to(Change) do %>Change<% end %><esc>/Change<returreturn>
      inoremap <silent> ,hrlb <%= link_to(Change) do %>Change<% end %><esc>/Change<returreturn>
      " Html Ruby (erb) Image Tag
      nnoremap <silent> ,hrit a<%= image_tag(Change, alt: 'Change') %><esc>/Change<returreturn>
      inoremap <silent> ,hrit <%= image_tag(Change, alt: 'Change') %><esc>/Change<returreturn>
      " Html Ruby (erb) Javascript Tag
      nnoremap <silent> ,hrjt a<%= javascript_include_tag('Change') %><esc>/Change<returreturn>
      inoremap <silent> ,hrjt <%= javascript_include_tag('Change') %><esc>/Change<returreturn>
      " Html Ruby (erb) Javascript Pack
      nnoremap <silent> ,hrjp a<%= javascript_pack_tag('Change', 'data-turbolinks-track': 'reload') %><esc>/Change<returreturn>
      inoremap <silent> ,hrjp <%= javascript_pack_tag('Change', 'data-turbolinks-track': 'reload') %><esc>/Change<returreturn>
      " Html Ruby (erb) StyleSheet
      nnoremap <silent> ,hrss aa<%= stylesheet_link_tag('Change') %><esc>/Change<returreturn>
      inoremap <silent> ,hrss <%= stylesheet_link_tag('Change') %><esc>/Change<returreturn>
      
    " Html Form
      " Html Form WIth
      nnoremap <silent> ,hfwi a<%= form_with(scope: Change, url: Change, method: :Change) do \|form\| %><esc>o<% end %><esc>/Change<returreturn>
      inoremap <silent> ,hfwi <%= form_with(scope: Change, url: Change, method: :Change) do \|form\| %><esc>o<% end %><esc>/Change<returreturn>
      " Html Form Full Errors
      nnoremap <silent> ,hffe a<%= render(partial: 'shared/full_errors', locals: { errors_hash: @Change.errors.messages, ian: false }) %><esc>/Change<returreturn>
      inoremap <silent> ,hffe <%= render(partial: 'shared/full_errors', locals: { errors_hash: @Change.errors.messages, ian: false }) %><esc>/Change<returreturn>
      " Html Form ROw
      nnoremap <silent> ,hfro a<div class="form-row"><esc>o</div><esc>O <backspace><esc>
      inoremap <silent> ,hfro <div class="form-row"><esc>o</div><esc>O <backspace><esc>
      " Html Form GRoupe
      nnoremap <silent> ,hfgr a<div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
      inoremap <silent> ,hfgr <div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
      " Html Form HIdden field
      nnoremap <silent> ,hfhi a<%= form.hidden_field(:Change, value: @Change.Change) %><esc>/Change<returreturn>
      inoremap <silent> ,hfhi <%= form.hidden_field(:Change, value: @Change.Change) %><esc>/Change<returreturn>
      " Html Form Hidden field Tag
      nnoremap <silent> ,hfht a<%= hidden_field_tag(:Change, Change) %><esc>/Change<returreturn>
      inoremap <silent> ,hfht <%= hidden_field_tag(:Change, Change) %><esc>/Change<returreturn>
      " Html Form LAbel
      nnoremap <silent> ,hfla a<%= form.label(:Change, 'Change') %><esc>/Change<returreturn>
      inoremap <silent> ,hfla <%= form.label(:Change, 'Change') %><esc>/Change<returreturn>
      " Html Form Label Block
      nnoremap <silent> ,hflb a<%= form.label(:Change) do %>Change<% end %><esc>/Change<returreturn>
      inoremap <silent> ,hflb <%= form.label(:Change) do %>Change<% end %><esc>/Change<returreturn>
      " Html Form Label No lable (mainly for styled checkboxes) - in order for
      " rails to leave blank label, have to use block with empty space (" ")
      " otherwise rails will fill content autoamtically
      nnoremap <silent> ,hfln a<%= form.label(:Change) do %> <% end %><esc>/Change<returreturn>
      inoremap <silent> ,hfln <%= form.label(:Change) do %> <% end %><esc>/Change<returreturn>
      " Html Form Text Field
      nnoremap <silent> ,hftf a<%= form.text_field(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      inoremap <silent> ,hftf <%= form.text_field(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      " Html Form Text Area
      nnoremap <silent> ,hfta a<%= form.text_area(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      inoremap <silent> ,hfta <%= form.text_area(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      " Html Form Rich Text
      nnoremap <silent> ,hfrt a<%= form.rich_text_area(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      inoremap <silent> ,hfrt <%= form.rich_text_area(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      " Html Form Email Field
      nnoremap <silent> ,hfef a<%= form.email_field(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      inoremap <silent> ,hfef <%= form.email_field(:Change, value: @Change.Change, class: 'form-control') %><esc>/Change<returreturn>
      " Html Form Checkbox Wrapper
      nmap <silent> ,hfcw a<div class="custom-control custom-checkbox"><esc>,o,hfcb<esc>,o,hfln<esc>o</div><esc>/Change<returreturn>
      " Html Form Checkbox Stacked
      " Html Form Checkbox Inline
      " Html Form CheckBox
      nnoremap <silent> ,hfcb a<%= form.check_box(:Change, class: 'custom-control-input') %><esc>/Change<return>
      " Html Form Checkbox Long
      nnoremap <silent> ,hfef a<%= form.check_box(:Change, { class: 'custom-control-input' }, Change, false) %><esc>/Change<return>
      " Html Form Password field
      nnoremap <silent> ,hfpf a<%= form.password_field(:password, class: 'form-control') %><esc>/Change<return>
      inoremap <silent> ,hfpf <%= form.password_field(:password, class: 'form-control') %><esc>/Change<return>
      " Html Form Password Confirmation
      nnoremap <silent> ,hfpc a<%= form.password_field(:password_confirmation, class: 'form-control') %><esc>/Change<return>
      inoremap <silent> ,hfpc <%= form.password_field(:password_confirmation, class: 'form-control') %><esc>/Change<returreturn>
      " Html Form SElect
      nnoremap <silent> ,hfse a<%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<returreturn>
      inoremap <silent> ,hfse <%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<returreturn>
      " Html Form Select Options for select
      nnoremap <silent> ,hfso a<%= form.select(:Change , options_for_select(Change, @Change.Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<returreturn>
      inoremap <silent> ,hfso <%= form.select(:Change , options_for_select(Change, @Change.Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<returreturn>
      " Html Form Select Grouped options for select
      nnoremap <silent> ,hfsg a<%= form.select(:Change , grouped_options_for_select(Change, @Change.Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<returreturn>
      inoremap <silent> ,hfsg <%= form.select(:Change , grouped_options_for_select(Change, @Change.Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<returreturn>
      " Html Form Select Block
      nnoremap <silent> ,hfsb a<%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/Change<returreturn>
      inoremap <silent> ,hfsb <%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/Change<returreturn>
      " Html Form OPtion
      nnoremap <silent> ,hfop a<option <%= "selected='true'" if Change %> value="<%= Change %>">Change</option><esc>/Change<returreturn>
      inoremap <silent> ,hfop <option <%= "selected='true'" if Change %> value="<%= Change %>">Change</option><esc>/Change<returreturn>
      " Html Form Inline Errors
      nnoremap <silent> ,hfie a<%= render(partial: 'shared/inline_errors', locals: { errors_hash: @Change.errors.messages, attribute: :Change, ian: false }) %><esc>/Change<returreturn>
      inoremap <silent> ,hfie <%= render(partial: 'shared/inline_errors', locals: { errors_hash: @Change.errors.messages, attribute: :Change, ian: false }) %><esc>/Change<returreturn>
      " Html Form SUbmit
      nnoremap <silent> ,hfsu a<%= form.submit(:Change, class: 'btn btn-Change') %><esc>/Change<returreturn>
      inoremap <silent> ,hfsu <%= form.submit(:Change, class: 'btn btn-Change') %><esc>/Change<returreturn>
      " Html Form CUstom Field
      nnoremap <silent> ,hfcu a<%= form.Change(:Change, class: 'form-control') %><esc>/Change<returreturn>
      inoremap <silent> ,hfcu <%= form.Change(:Change, class: 'form-control') %><esc>/Change<returreturn>
      " Html Form Fields For
      nnoremap <silent> ,hfff a<%= form.fields_for(:Change) do \|sub_form\| %><return><% end %><esc>/Change<returreturn>
      inoremap <silent> ,hfff <%= form.fields_for(:Change) do \|sub_form\| %><return><% end %><esc>/Change<returreturn>

    " html partials
      " Html Partial BAsic
      nnoremap <silent> ,hpba a<%= render(partial: 'Change', locals: { Change }) %><esc>/Change<returreturn>
      inoremap <silent> ,hpba <%= render(partial: 'Change', locals: { Change }) %><esc>/Change<returreturn>
      " Html Partial No Locals
      nnoremap <silent> ,hpnl a<%= render(partial: 'Change') %><esc>/Change<returreturn>
      inoremap <silent> ,hpnl <%= render(partial: 'Change') %><esc>/Change<returreturn>

  " ruby mappings 
    
    " ruby inline
      nnoremap <silent> ,riea a.each { <bar><bar>  }<esc>hhhi
      inoremap <silent> ,riea .each { <bar><bar>  }<esc>hhhi
      nnoremap <silent> ,rima a.map { <bar><bar>  }<esc>hhhi
      inoremap <silent> ,rima .map { <bar><bar>  }<esc>hhhi
   
    " ruby blocks
      nnoremap <silent> ,rbde adef <esc>oend<esc>kla
      inoremap <silent> ,rbde def <esc>oend<esc>kla
      nnoremap <silent> ,rbdo ado<return>end<esc>O
      inoremap <silent> ,rbdo do<return>end<esc>O

  " Rails mappings 
    " Rails Routes 
      " main routes
        " Rails Routes NAmespace
        nnoremap <silent> ,rrna anamespace :Change do<return>end<esc>/Change<returreturn>
        inoremap <silent> ,rrna namespace :Change do<return>end<esc>/Change<returreturn>
        " Rails Routes REsources
        nnoremap <silent> ,rrre aresources :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<returreturn>
        inoremap <silent> ,rrre resources :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<returreturn>
        " Rails Routes Resources Nested
        nnoremap <silent> ,rrrn aget ':id/Change', to: 'Change#index', as: :Change<esc>opost ':id/Change', to: 'Change#create'<esc>oresources :Change, only: [:show, :update, :destroy]<esc>/Change<returreturn>
        inoremap <silent> ,rrrn aget ':id/Change', to: 'Change#index', as: :Change<esc>opost ':id/Change', to: 'Change#create'<esc>oresources :Change, only: [:show, :update, :destroy]<esc>/Change<returreturn>
        " Rails Routes Get Member
        nnoremap <silent> ,rrgm aget 'Change/:id/Change', to: 'Change#Change', as: :Change_Change <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/Change<returreturn>
        inoremap <silent> ,rrgm get 'Change/:id/Change', to: 'Change#Change', as: :Change_Change <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/Change<returreturn>
        " Rails Routes GEt (for non-restful routes)
        nnoremap <silent> ,rrge aget 'Change', to: 'Change#Change'<esc>/Change<returreturn>
        inoremap <silent> ,rrge get 'Change', to: 'Change#Change'<esc>/Change<returreturn>
      " other routes 
        "
        nnoremap <silent> ,rrsc ascope path: :Change, module: :Change, as: :Change do<return>end<esc>/Change<returreturn>
        inoremap <silent> ,rrsc scope path: :Change, module: :Change, as: :Change do<return>end<esc>/Change<returreturn>
        
        nnoremap <silent> ,rrrl aresources path: :Change, controller: :Change, as: :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<returreturn>
        inoremap <silent> ,rrrl resources path: :Change, controller: :Change, as: :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<returreturn>
        
        nnoremap <silent> ,rrra aresources path: :Change, module: :Change, as: :Change, only: [] do<return>end<esc>/Change<returreturn>
        inoremap <silent> ,rrra resources path: :Change, module: :Change, as: :Change, only: [] do<return>end<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrme amember do<return>end<esc>O <backspace><esc>
        inoremap <silent> ,rrme member do<return>end<esc>O <backspace><esc>
        "
        nnoremap <silent> ,rrgl aget 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>
        inoremap <silent> ,rrgl get 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrgn aget ':id/Change', to: 'Change#index', as: :Change<esc>/Change<returreturn>
        inoremap <silent> ,rrgn get ':id/Change', to: 'Change#index', as: :Change<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrpo apost 'Change', to: 'Change#Change'<esc>/Change<returreturn>
        inoremap <silent> ,rrpo post 'Change', to: 'Change#Change'<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrpl apost 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>
        inoremap <silent> ,rrpl post 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrpn apost ':id/Change', to: 'Change#create'<esc>/Change<returreturn>
        inoremap <silent> ,rrpn post ':id/Change', to: 'Change#create'<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrpa apatch 'Change', to: 'Change#Change'<esc>/Change<returreturn>
        inoremap <silent> ,rrpa patch 'Change', to: 'Change#Change'<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrpl apatch 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>
        inoremap <silent> ,rrpl patch 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrde adelete 'Change', to: 'Change#Change'<esc>/Change<returreturn>
        inoremap <silent> ,rrde delete 'Change', to: 'Change#Change'<esc>/Change<returreturn>
        "
        nnoremap <silent> ,rrdl adelete 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>
        inoremap <silent> ,rrdl delete 'Change', to: 'Change#Change', as: :Change<esc>/Change<returreturn>

    " rails model mappings
      nnoremap <silent> ,rm iHello, World!<esc>
      
    " Rails Controller mappings
      " Rails Controller Strong Params
      nnoremap <silent> ,rcsp adef Change_params<return>params.require('Change').permit(:Change)<return>end<esc>/Change<returreturn>
      " Rails Controller Strong params Long
      nnoremap <silent> ,rcsl adef Change_params<return>params.require('Change').permit(:Change, Change: [], Change: [:Change, Change: [], Change: [:Change]] )<return>end<esc>/Change<returreturn>
      

  " javascript mappings 
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
        nnoremap <silent> ,jqsa a$('[Change="Change"]')<esc>/Change<return>
        inoremap <silent> ,jqsa $('[Change="Change"]')<esc>/Change<return>
        " Javascript jQiery Select Data attribute
        nnoremap <silent> ,jqsd a$('[data-Change="Change"]')<esc>/Change<return>
        inoremap <silent> ,jqsd $('[data-Change="Change"]')<esc>/Change<return>
        " Javascript jQiery Document On 
        nnoremap <silent> ,jqdo a$(document).on('Change', 'Change', {}, function(){})<esc>hi<return><esc>/Change<returreturn>
        inoremap <silent> ,jqdo $(document).on('Change', 'Change', {}, function(){})<esc>hi<return><esc>/Change<returreturn>
        " Javascript jQiery Document Ready
        nnoremap <silent> ,jqdr a$(document).ready(function(){<return>Change<return>})<return>$(document).ajaxComplete(function(){<return>Change<return>})<esc>/Change<returreturn>
        inoremap <silent> ,jqdr $(document).ready(function(){<return>Change<return>})<esc>/Change<returreturn>
        " Javascript jQiery Document Ajax complete
        nnoremap <silent> ,jqda a$(document).ajaxComplete(function(){<return>Change<return>})<esc>/Change<returreturn>
        inoremap <silent> ,jqda $(document).ajaxComplete(function(){<return>Change<return>})<esc>/Change<returreturn>
        " Javascript jQiery Element On 
        nnoremap <silent> ,jqeo a$(Change).on('Change', function(){})<esc>hi<return><esc>/Change<returreturn>
        inoremap <silent> ,jqeo $(Change).on('Change', function(){})<esc>hi<return><esc>/Change<returreturn>

    " Javascript Vanilla
        "
        nnoremap <silent> ,jvif aif (Change) {<return>}<esc>/Change<returreturn>
        inoremap <silent> ,jvif if (Change) {<return>}<esc>/Change<returreturn>
        "
        nnoremap <silent> ,jvel a<space>else {<return>}<esc>O
        inoremap <silent> ,jvel <space>else {<return>}<esc>O
        "
        nnoremap <silent> ,jvei a<space>else if (Chagnge) {<return>}<esc>/Change<returreturn>
        inoremap <silent> ,jvei <space>else if (Chagnge) {<return>}<esc>/Change<returreturn>
        "
        nnoremap <silent> ,jvfo afor (Change of Change) {<return>}<esc>/Change<returreturn>
        inoremap <silent> ,jvfo for (Change of Change) {<return>}<esc>/Change<returreturn>
        " Javascript Vanilla FUnction
        nnoremap <silent> ,jvfu afunction Change(){<return>}<esc>/Change<returreturn>
        inoremap <silent> ,jvfu function Change(){<return>}<esc>/Change<returreturn>

  " templates
    " controllers
      " Templates Controllers BAse
        nnoremap <silent> ,tcba :read ../templates/controllers/base_controller.rb<return>ggdd/Change<returreturn>
      " Templates Controllers Show Base
        nnoremap <silent> ,tcsb :read ../templates/controllers/actions/show_base.rb<return>/Change<returreturn>
      " Templates Controllers Show for Tab
        nnoremap <silent> ,tcst :read ../templates/controllers/actions/show_tab.rb<return>/Change<returreturn>
      " Templates Controllers Show tab Router
        nnoremap <silent> ,tcsr :read ../templates/controllers/actions/show_router.rb<return>/Change<returreturn>

    " models
      " Templates Models BAse
        nnoremap <silent> ,tmba :read ../templates/models/models/base_model.rb<return>ggdd/Change<returreturn>
      " Templates Models BLank
        nnoremap <silent> ,tmbl :read ../templates/models/models/blank_model.rb<return>ggdd/Change<returreturn>
    
    " helpers 
      " Templates Helpers BAse
        nnoremap <silent> ,thba :read ../templates/helpers/base_helper.rb<return>ggdd/Change<returreturn>
