" insert mode only mappings 
  " single key mappings 
    " prevent return from autocomplete (very annoying because to return you have
    " to hit space then return. Now, tab does autocomplete and return does
    " return
    " i
      inoremap <silent> <return> <space><backspace><return>
      inoremap <silent> {{ {<space><space>}<left><left>
      inoremap <silent> <bar><bar> <bar><bar><left>

" normal most mappings
  " single key mappings
  nnoremap <silent> <return> a

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

  " Edit mappings
    nnoremap <silent> ,em :edit ~/.dotfiles/clarkmappings.vim<return>
    nnoremap <silent> ,ea :edit app/assets/
    nnoremap <silent> ,ec :edit app/controllers/
    nnoremap <silent> ,eh :edit app/helpers/
    nnoremap <silent> ,ej :edit app/javascript/packs/
    nnoremap <silent> ,em :edit app/models/
    nnoremap <silent> ,ev :edit app/views/

  " Html mappings  
    " Html Elements
      " Html Elements (multi-line)
        " Html Elements DIv
        nnoremap <silent> ,hedi a<div><esc>o</div><esc>k
        inoremap <silent> ,hedi <div><esc>o</div><esc>k
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

      " Html Elements (single line)
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
        nnoremap <silent> ,hebu a<button></button><esc>hhhhhhhh
        inoremap <silent> ,hebu <button></button><esc>hhhhhhhh
        " Html Elements CUstom
        nnoremap <silent> ,hecu a<Change></Change><esc>/Change<return>cgn
        inoremap <silent> ,hecu <Change></Change><esc>/Change<return>cgn
      
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
      nnoremap <silent> ,hrie a<% if Change %><esc>o<% else %><esc>o<% end %><esc>/Change<return>cgn
      inoremap <silent> ,hrie <% if Change %><esc>o<% else %><esc>o<% end %><esc>/Change<return>cgn
      " Html Ruby (erb) ELse
      nnoremap <silent> ,hrel a<% else %><esc>o
      inoremap <silent> ,hrel <% else %><esc>o
      " Html Ruby (erb) Else If
      nnoremap <silent> ,hrei a<% elsif  %><esc>hhi
      inoremap <silent> ,hrei <% elsif  %><esc>hhi
      " Html Ruby (erb) ENd
      nnoremap <silent> ,hren a<% end %><esc>
      inoremap <silent> ,hren <% end %><esc>
      " Html Ruby (erb) LInk to
      nnoremap <silent> ,hrli a<%= link_to(Change, Change) %><esc>/Change<return>cgn
      inoremap <silent> ,hrli <%= link_to(Change, Change) %><esc>/Change<return>cgn
      " Html Ruby (erb) Link to Remote 
      nnoremap <silent> ,hrlr a<%= link_to(Change, Change, remote: true, method: 'Change') %><esc>/Change<return>cgn
      inoremap <silent> ,hrlr <%= link_to(Change, Change, remote: true, method: 'Change') %><esc>/Change<return>cgn
      " Html Ruby (erb) Link to Block 
      nnoremap <silent> ,hrlb a<%= link_to(Change) do %>Change<% end %><esc>/Change<return>cgn
      inoremap <silent> ,hrlb <%= link_to(Change) do %>Change<% end %><esc>/Change<return>cgn
      " Html Ruby (erb) Image Tag
      nnoremap <silent> ,hrit a<%= image_tag(Change, alt: 'Change') %><esc>/Change<return>cgn
      inoremap <silent> ,hrit <%= image_tag(Change, alt: 'Change') %><esc>/Change<return>cgn
      
    " Html Form
      " Html Form WIth
      nnoremap <silent> ,hfwi a<%= form_with(model: Change, url: Change) do \|form\| %><esc>o<% end %><esc>/Change<return>cgn
      inoremap <silent> ,hfwi <%= form_with(model: Change, url: Change) do \|form\| %><esc>o<% end %><esc>/Change<return>cgn
      " Html Form Full Errors
      nnoremap <silent> ,hffe a<%= render(partial: 'shared/full_errors', locals: { errors_hash: @Change.errors.messages, ian: false }) %><esc>/Change<return>cgn
      inoremap <silent> ,hffe <%= render(partial: 'shared/full_errors', locals: { errors_hash: @Change.errors.messages, ian: false }) %><esc>/Change<return>cgn
      " Html Form ROw
      nnoremap <silent> ,hfro a<div class="form-row"><esc>o</div><esc>O <backspace><esc>
      inoremap <silent> ,hfro <div class="form-row"><esc>o</div><esc>O <backspace><esc>
      " Html Form GRoupe
      nnoremap <silent> ,hfgr a<div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
      inoremap <silent> ,hfgr <div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
      " Html Form HIdden field
      nnoremap <silent> ,hfhi a<%= form.hidden_field(:Change) %><esc>/Change<return>cgn
      inoremap <silent> ,hfhi <%= form.hidden_field(:Change) %><esc>/Change<return>cgn
      " Html Form Hidden field Tag
      nnoremap <silent> ,hfht a<%= hidden_field_tag(:Change, Change) %><esc>/Change<return>cgn
      inoremap <silent> ,hfht <%= hidden_field_tag(:Change, Change) %><esc>/Change<return>cgn
      " Html Form LAbel
      nnoremap <silent> ,hfla a<%= form.label(:Change, 'Change') %><esc>/Change<return>cgn
      inoremap <silent> ,hfla <%= form.label(:Change, 'Change') %><esc>/Change<return>cgn
      " Html Form Label Block
      nnoremap <silent> ,hflb a<%= form.label(:Change) do %>Change<% end %><esc>/Change<return>cgn
      inoremap <silent> ,hflb <%= form.label(:Change) do %>Change<% end %><esc>/Change<return>cgn
      " Html Form TExt field
      nnoremap <silent> ,hfte a<%= form.text_field(:Change, class: 'form-control') %><esc>/Change<return>cgn
      inoremap <silent> ,hfte <%= form.text_field(:Change, class: 'form-control') %><esc>/Change<return>cgn
      " Html Form Text Area
      nnoremap <silent> ,hfta a<%= form.text_area(:Change, class: 'form-control') %><esc>/Change<return>cgn
      inoremap <silent> ,hfta <%= form.text_area(:Change, class: 'form-control') %><esc>/Change<return>cgn
      " Html Form Rich Text
      nnoremap <silent> ,hfrt a<%= form.rich_text_area(:Change, class: 'form-control') %><esc>/Change<return>cgn
      inoremap <silent> ,hfrt <%= form.rich_text_area(:Change, class: 'form-control') %><esc>/Change<return>cgn
      " Html Form EMail field
      nnoremap <silent> ,hfem a<%= form.email_field(:Change, class: 'form-control') %><esc>/Change<return>cgn
      inoremap <silent> ,hfem <%= form.email_field(:Change, class: 'form-control') %><esc>/Change<return>cgn
      " Html Form PAssword field
      nnoremap <silent> ,hfpa a<%= form.password_field(:password, class: 'form-control') %><esc>/Change<return>cgn
      inoremap <silent> ,hfpa <%= form.password_field(:password, class: 'form-control') %><esc>/Change<return>cgn
      " Html Form Password Confirmation
      nnoremap <silent> ,hfpc a<%= form.password_field(:password_confirmation, class: 'form-control') %><esc>/Change<return>cgn
      inoremap <silent> ,hfpc <%= form.password_field(:password_confirmation, class: 'form-control') %><esc>/Change<return>cgn
      " Html Form SElect
      nnoremap <silent> ,hfse a<%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<return>cgn
      inoremap <silent> ,hfse <%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<return>cgn
      " Html Form Select Options for select
      nnoremap <silent> ,hfso a<%= form.select(:Change , options_for_select(Change, Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<return>cgn
      inoremap <silent> ,hfso <%= form.select(:Change , options_for_select(Change, Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<return>cgn
      " Html Form Select Grouped options for select
      nnoremap <silent> ,hfsg a<%= form.select(:Change , grouped_options_for_select(Change, Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<return>cgn
      inoremap <silent> ,hfsg <%= form.select(:Change , grouped_options_for_select(Change, Change), { include_blank: "Select" }, { class: 'form-control' }) %><esc>/Change<return>cgn
      " Html Form Select Block
      nnoremap <silent> ,hfsb a<%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/Change<return>cgn
      inoremap <silent> ,hfsb <%= form.select(:Change , [], { include_blank: "Select" }, { class: 'form-control' }) do %><esc>o<% end %><esc>/Change<return>cgn
      " Html Form OPtion
      nnoremap <silent> ,hfop a<option <%= "selected='true'" if Change %> value="<%= Change %>">Change</option><esc>/Change<return>cgn
      inoremap <silent> ,hfop <option <%= "selected='true'" if Change %> value="<%= Change %>">Change</option><esc>/Change<return>cgn
      " Html Form Inline Errors
      nnoremap <silent> ,hfie a<%= render(partial: 'shared/inline_errors', locals: { errors_hash: @Change.errors.messages, attribute: :Change, ian: false }) %><esc>/Change<return>cgn
      inoremap <silent> ,hfie <%= render(partial: 'shared/inline_errors', locals: { errors_hash: @Change.errors.messages, attribute: :Change, ian: false }) %><esc>/Change<return>cgn
      " Html Form SUbmit
      nnoremap <silent> ,hfsu a<%= form.submit(:Change, class: 'btn btn-Change') %><esc>/Change<return>cgn
      inoremap <silent> ,hfsu <%= form.submit(:Change, class: 'btn btn-Change') %><esc>/Change<return>cgn
      " Html Form CUstom Field
      nnoremap <silent> ,hfcu a<%= form.Change(:Change, class: 'form-control') %><esc>/Change<return>cgn
      inoremap <silent> ,hfcu <%= form.Change(:Change, class: 'form-control') %><esc>/Change<return>cgn

    " html partials
      " Html Partial BAsic
      nnoremap <silent> ,hpba a<%= render(partial: 'Change', locals: { Change }) %><esc>/Change<return>cgn
      inoremap <silent> ,hpba <%= render(partial: 'Change', locals: { Change }) %><esc>/Change<return>cgn
      " Html Partial No Locals
      nnoremap <silent> ,hpnl a<%= render(partial: 'Change') %><esc>/Change<return>cgn
      inoremap <silent> ,hpnl <%= render(partial: 'Change') %><esc>/Change<return>cgn

  " ruby / rails mappings 
    " common ruby 
      nnoremap <silent> ,rc iHello, World!<esc>
    
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

    " ruby routes 
      nnoremap <silent> ,rrna anamespace :Change do<return>end<esc>/Change<return>cgn
      inoremap <silent> ,rrna namespace :Change do<return>end<esc>/Change<return>cgn

      nnoremap <silent> ,rrsc ascope path: :Change, module: :Change, as: :Change do<return>end<esc>/Change<return>cgn
      inoremap <silent> ,rrsc scope path: :Change, module: :Change, as: :Change do<return>end<esc>/Change<return>cgn
      
      nnoremap <silent> ,rrre aresources :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<return>cgn
      inoremap <silent> ,rrre resources :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<return>cgn
      
      nnoremap <silent> ,rrrl aresources path: :Change, controller: :Change, as: :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<return>cgn
      inoremap <silent> ,rrrl resources path: :Change, controller: :Change, as: :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<return>cgn
      
      nnoremap <silent> ,rrrn aget ':id/Change', to: 'Change#index', as: :Change<esc>opost ':id/Change', to: 'Change#create'<esc>oresources :Change, only: [:show, :update, :destroy]<esc>/Change<return>cgn
      inoremap <silent> ,rrrn get ':id/Change', to: 'Change#index', as: :Change<esc>opost ':id/Change', to: 'Change#create'<esc>oresources :Change, only: [:show, :update, :destroy]<esc>/Change<return>cgn
      
      nnoremap <silent> ,rrra aresources path: :Change, module: :Change, as: :Change, only: [] do<return>end<esc>/Change<return>cgn
      inoremap <silent> ,rrra resources path: :Change, module: :Change, as: :Change, only: [] do<return>end<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrme amember do<return>end<esc>O <backspace><esc>
      inoremap <silent> ,rrme member do<return>end<esc>O <backspace><esc>
      "
      nnoremap <silent> ,rrge aget 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      inoremap <silent> ,rrge get 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrgl aget 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      inoremap <silent> ,rrgl get 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrgn aget ':id/Change', to: 'Change#index', as: :Change<esc>/Change<return>cgn
      inoremap <silent> ,rrgn get ':id/Change', to: 'Change#index', as: :Change<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrgm aget 'Change/:id/Change', to: 'Change#Change', as: :Change_Change <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/Change<return>cgn
      inoremap <silent> ,rrgm get 'Change/:id/Change', to: 'Change#Change', as: :Change_Change <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrpo apost 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      inoremap <silent> ,rrpo post 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrpl apost 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      inoremap <silent> ,rrpl post 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrpn apost ':id/Change', to: 'Change#create'<esc>/Change<return>cgn
      inoremap <silent> ,rrpn post ':id/Change', to: 'Change#create'<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrpa apatch 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      inoremap <silent> ,rrpa patch 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrpl apatch 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      inoremap <silent> ,rrpl patch 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrde adelete 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      inoremap <silent> ,rrde delete 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      "
      nnoremap <silent> ,rrdl adelete 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      inoremap <silent> ,rrdl delete 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      "

    " rails model mappings
      nnoremap <silent> ,rm iHello, World!<esc>

  " javascript mappings 
    " javascript selectors / jquery   
        nnoremap <silent> ,jsba a$()<esc>i
        inoremap <silent> ,jsba $()<esc>i
        nnoremap <silent> ,jscl a$('.')<esc>hi
        inoremap <silent> ,jscl $('.')<esc>hi
        nnoremap <silent> ,jsid a$('#')<esc>hi
        inoremap <silent> ,jsid $('#')<esc>hi

    " js code
        "
        nnoremap <silent> ,jcdo a$(document).on('Change', 'Change', {}, function(event){})<esc>hi<return><esc>/Change<return>cgn
        inoremap <silent> ,jcdo $(document).on('Change', 'Change', {}, function(event){})<esc>hi<return><esc>/Change<return>cgn
        "
        nnoremap <silent> ,jcif iif (Change) {<return>}<esc>/Change<return>cgn
        inoremap <silent> ,jcif if (Change) {<return>}<esc>/Change<return>cgn
        "
        nnoremap <silent> ,jcel a<space>else {<return>}<esc>O
        inoremap <silent> ,jcel <space>else {<return>}<esc>O
        "
        nnoremap <silent> ,jcei a<space>else if (Chagnge) {<return>}<esc>/Change<return>cgn
        inoremap <silent> ,jcei <space>else if (Chagnge) {<return>}<esc>/Change<return>cgn
        "
        nnoremap <silent> ,jcfo afor (Change of Change) {<return>}<esc>/Change<return>cgn
        inoremap <silent> ,jcfo for (Change of Change) {<return>}<esc>/Change<return>cgn

  " templates
    " controllers
      " Templates Controllers BAse
        nnoremap <silent> ,tcba :read ../templates/controllers/base_controller.rb<return>ggdd/Change<return>cgn
      " Templates Controllers Show Base
        nnoremap <silent> ,tcsb :read ../templates/controllers/actions/show_base.rb<return>/Change<return>cgn
      " Templates Controllers Show for Tab
        nnoremap <silent> ,tcst :read ../templates/controllers/actions/show_tab.rb<return>/Change<return>cgn
      " Templates Controllers Show tab Router
        nnoremap <silent> ,tcsr :read ../templates/controllers/actions/show_router.rb<return>/Change<return>cgn

    " models
      " Templates Models BAse
        nnoremap <silent> ,tmba :read ../templates/models/models/base_model.rb<return>ggdd/Change<return>cgn
      " Templates Models BLank
        nnoremap <silent> ,tmbl :read ../templates/models/models/blank_model.rb<return>ggdd/Change<return>cgn
    
    " helpers 
      " Templates Helpers BAse
        nnoremap <silent> ,thba :read ../templates/helpers/base_helper.rb<return>ggdd/Change<return>cgn
