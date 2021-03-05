" insert mode mappings 
  " single key mappings 
  " prevent return from autocomplete (very annoying because to return you have
  " to hit space then return. Now, tab does autocomplete and return does
  " return
    inoremap <silent> <return> <space><backspace><return>
" normal most mappings
  " single key mappings

  "single key comma mappings
    nnoremap <silent> ,o o <backspace><esc>
    nnoremap <silent> ,O O <backspace><esc>
    nnoremap <silent> ,# I# <esc>0
    nnoremap <silent> ,,# I<delete><delete><esc>0
    nnoremap <silent> ,// I// <esc>0
    nnoremap <silent> ,,// I<delete><delete><delete><esc>0
    nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
    nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0

  " misc. mapping
    " misc. reload source
      nnoremap <silent> ,mrs :so ~/.dotfiles/clarkmappings.vim<return>

  " edit mappings
    nnoremap <silent> ,em :edit ~/.dotfiles/clarkmappings.vim<return>
    nnoremap <silent> ,ea :edit app/assets/
    nnoremap <silent> ,ec :edit app/controllers/
    nnoremap <silent> ,eh :edit app/helpers/
    nnoremap <silent> ,ej :edit app/javascript/packs/
    nnoremap <silent> ,em :edit app/models/
    nnoremap <silent> ,ev :edit app/views/

  " html  
    " html elements
      " html new / multi-line elements
        nnoremap <silent> ,hedi a<div><esc>o</div><esc>k
        nnoremap <silent> ,heta a<table><esc>o</table><esc>k
        nnoremap <silent> ,hetH a<thead><esc>o</thead><esc>k
        nnoremap <silent> ,hetr a<tr><esc>o</tr><esc>k
        nnoremap <silent> ,heth a<th><esc>o</th><esc>k
        nnoremap <silent> ,hetb a<tbody><esc>o</tbody><esc>k
        nnoremap <silent> ,hetd a<td><esc>o</td><esc>k
        nnoremap <silent> ,hetf a<tfoot><esc>o</tfoot><esc>k

      " html inline elements  
        nnoremap <silent> ,hepa a<p></p><esc>hhhh
        nnoremap <silent> ,helt a<%= link_to(Change, Change, Change) %><esc>/Change<return>cgn
        nnoremap <silent> ,hesp a<span></span><esc>hhhhhhh
        nnoremap <silent> ,hest a<strong></strong><esc>hhhhhhhhh
        nnoremap <silent> ,hebu a<button></button><esc>hhhhhhhh
        nnoremap <silent> ,heot a<Change></Change><esc>/Change<return>cgn
      
    " html basic erb 
      nnoremap <silent> ,hrer a<%  %><esc>hhi
      nnoremap <silent> ,hree a<%=  %><esc>hhi
      nnoremap <silent> ,hrif a<% if  %><esc>o<% end %><esc>khhi
      nnoremap <silent> ,hrie a<% if Change %><esc>o<% else %><esc>o<% end %><esc>/Change<return>cgn
      nnoremap <silent> ,hrel a<% else %><esc>o
      nnoremap <silent> ,hrei a<% elsif  %><esc>hhi
      nnoremap <silent> ,hren a<% end %><esc>
      
    " html forms
      nnoremap <silent> ,hfwi a<%= form_with(model: Change, url: Change) do \|form\| %><esc>o<% end %><esc>/Change<return>cgn
      nnoremap <silent> ,hffe a<%= render(partial: 'shared/full_errors', locals: { errors_hash: @Change.errors.messages, ian: false }) %><esc>/Change<return>cgn
      nnoremap <silent> ,hfro a<div class="form-row"><esc>o</div><esc>O <backspace><esc>
      nnoremap <silent> ,hfgr a<div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
      nnoremap <silent> ,hfhf a<%= form.hidden_field(:Change) %><esc>/Change<return>cgn
      nnoremap <silent> ,hfht a<%= hidden_field_tag(:Change, Change) %><esc>/Change<return>cgn
      nnoremap <silent> ,hfla a<%= form.label(:Change) %><esc>/Change<return>cgn
      nnoremap <silent> ,hftf a<%= form.text_field(:Change, class: 'form-control') %><esc>/Change<return>cgn
      nnoremap <silent> ,hfta a<%= form.text_area(:Change, class: 'form-control') %><esc>/Change<return>cgn
      nnoremap <silent> ,hfrt a<%= form.rich_text_area(:Change, class: 'form-control') %><esc>/Change<return>cgn
      nnoremap <silent> ,hfef a<%= form.email_field(:Change, class: 'form-control') %><esc>/Change<return>cgn
      nnoremap <silent> ,hfpf a<%= form.password_field(:password, class: 'form-control') %><esc>/Change<return>cgn
      nnoremap <silent> ,hfpc a<%= form.password_field(:password_confirmation, class: 'form-control') %><esc>/Change<return>cgn
      nnoremap <silent> ,hfse a<%= form.select(:Change , [], { include_blank: 'Select' }, { class: 'form-control' }) %><esc>/Change<return>cgn
      nnoremap <silent> ,hfsb a<%= form.select(:Change , [], {  }, { class: 'form-control' }) do %><esc>o<% end %><esc>/Change<return>cgn
      nnoremap <silent> ,hfso a<option <%= "selected='true'" if Change %> value="<%= Change %>">Change</option><esc>/Change<return>cgn
      nnoremap <silent> ,hfie a<%= render(partial: 'shared/inline_errors', locals: { errors_hash: @Change.errors.messages, attribute: :Change, ian: false }) %><esc>/Change<return>cgn
      nnoremap <silent> ,hfsu a<%= form.submit(:Change, class: 'btn btn-Change') %><esc>/Change<return>cgn
      nnoremap <silent> ,hfof a<%= form.(:Change) %><esc>/Change<return>cgn

    " html partials
      " Html Partial BAsic
      nnoremap <silent> ,hpba a<%= render(partial: 'Change', locals: { Change }) %><esc>/Change<return>cgn
      " Html Partial No Locals
      nnoremap <silent> ,hpnl a<%= render(partial: 'Change') %><esc>/Change<return>cgn

  " ruby / rails mappings 
    " common ruby 
      nnoremap <silent> ,rc iHello, World!<esc>
    
    " ruby inline
      nnoremap <silent> ,riea a.each { <bar><bar>  }<esc>hhhi
      nnoremap <silent> ,rima a.map { <bar><bar>  }<esc>hhhi
   
    " ruby blocks
      nnoremap <silent> ,rbde adef <esc>oend<esc>kla
      nnoremap <silent> ,rbdo ado<return>end<esc>O

    " ruby routes 
      nnoremap <silent> ,rrna anamespace :Change do<return>end<esc>/Change<return>cgn
      nnoremap <silent> ,rrsc ascope path: :Change, module: :Change, as: :Change do<return>end<esc>/Change<return>cgn
      nnoremap <silent> ,rrre aresources :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<return>cgn
      nnoremap <silent> ,rrrl aresources path: :Change, controller: :Change, as: :Change, only: [:index, :show, :create, :update, :destroy]<esc>/Change<return>cgn
      nnoremap <silent> ,rrrn aget ':id/Change', to: 'Change#index', as: :Change<esc>opost ':id/Change', to: 'Change#create'<esc>oresources :Change, only: [:show, :update, :destroy]<esc>/Change<return>cgn
      nnoremap <silent> ,rrra aresources path: :Change, module: :Change, as: :Change, only: [] do<return>end<esc>/Change<return>cgn
      nnoremap <silent> ,rrme amember do<return>end<esc>O <backspace><esc>
      nnoremap <silent> ,rrge aget 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      nnoremap <silent> ,rrgl aget 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      nnoremap <silent> ,rrgn aget ':id/Change', to: 'Change#index', as: :Change<esc>/Change<return>cgn
      nnoremap <silent> ,rrgm aget 'Change/:id/Change', to: 'Change#Change', as: :Change_Change <esc>o# REMEMBER TO MAKE PARENT PLURAL ON INITIAL ARGUMENT AND "TO" BUT SINGULAR ON "AS"<esc>oExample: get 'users/:id/sub_profile', to: 'users#sub_profile', as: :user_subprofile<esc>oThis is because the helper method is pointing to a single user just like the show, edit, update and destroy actions<esc>ocore_user_subprofile_path is appropriate but core_users_subprofile_path is not<esc>/Change<return>cgn
      nnoremap <silent> ,rrpo apost 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      nnoremap <silent> ,rrpl apost 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      nnoremap <silent> ,rrpn apost ':id/Change', to: 'Change#create'<esc>/Change<return>cgn
      nnoremap <silent> ,rrpa apatch 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      nnoremap <silent> ,rrpl apatch 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn
      nnoremap <silent> ,rrde adelete 'Change', to: 'Change#Change'<esc>/Change<return>cgn
      nnoremap <silent> ,rrdl adelete 'Change', to: 'Change#Change', as: :Change<esc>/Change<return>cgn

    " rails model mappings
      nnoremap <silent> ,rm iHello, World!<esc>

  " javascript mappings 
    " javascript selectors / jquery   
        nnoremap <silent> ,jsba a$()<esc>i
        nnoremap <silent> ,jscl a$('.')<esc>hi
        nnoremap <silent> ,jsid a$('#')<esc>hi

    " js code
        nnoremap <silent> ,jcdo a$(document).on('Change', 'Change', {}, function(event){})<esc>hi<return><esc>/Change<return>cgn
        nnoremap <silent> ,jcif iif (Change) {<return>}<esc>/Change<return>cgn
        nnoremap <silent> ,jcel a else {<return>}<esc>O
        nnoremap <silent> ,jcei a else if (Chagnge) {<return>}<esc>/Change<return>cgn
        nnoremap <silent> ,jcfo a for (Change of Change) {<return>}<esc>/Change<return>cgn

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
