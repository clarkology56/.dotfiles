" single key mappings

"single key comma mappings
nnoremap <silent> ,o o <backspace><esc>
nnoremap <silent> ,O O <backspace><esc>
nnoremap <silent> ,# I#<esc>0
nnoremap <silent> ,,# I<delete><esc>0
nnoremap <silent> ,// I//<esc>0
nnoremap <silent> ,,// I<delete><delete><esc>0
nnoremap <silent> ,/* O/*<esc>o*/<esc>Vx0
nnoremap <silent> ,<! O<!--<esc>o--><esc>Vx0

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
    nnoremap <silent> ,helt a<%= link_to(cgn, cgn, cgn) %><esc>/cgn<return>
    nnoremap <silent> ,hesp a<span></span><esc>hhhhhhh
    nnoremap <silent> ,hest a<strong></strong><esc>hhhhhhhhh
    nnoremap <silent> ,hebu a<button></button><esc>hhhhhhhh
    nnoremap <silent> ,heot a<cgn></cgn><esc>/cgn<return>cgn
    
  " html basic erb 
  nnoremap <silent> ,hrer a<%  %><esc>hhi
  nnoremap <silent> ,hre= a<%=  %><esc>hhi
  nnoremap <silent> ,hrif a<% if  %><esc>o<% end %><esc>khhi
  nnoremap <silent> ,hrel o<% else %><esc>o
  nnoremap <silent> ,hrei o<% elsif  %><esc>hhi
  nnoremap <silent> ,hren o<% end %><esc>
    
  " html forms
  nnoremap <silent> ,hfwi a<%= form_with(model: cgn, url: cgn) do \|form\| %><esc>o<% end %><esc>/cgn<return>
  nnoremap <silent> ,hffe a<%= render(partial: 'shared/full_errors', locals: { errors_hash: @cgn.errors.messages, ian: false }) %><esc>/cgn<return>
  nnoremap <silent> ,hfro a<div class="form-row"><esc>o</div><esc>O <backspace><esc>
  nnoremap <silent> ,hfgr a<div class="form-group col-12"><esc>o</div><esc>O <backspace><esc>
  nnoremap <silent> ,hfla a<%= form.label(:cgn) %><esc>/cgn<return>
  nnoremap <silent> ,hftf a<%= form.text_field(:cgn) %><esc>/cgn<return>
  nnoremap <silent> ,hfta a<%= form.text_area(:cgn) %><esc>/cgn<return>
  nnoremap <silent> ,hfrt a<%= form.rich_text_area(:cgn) %><esc>/cgn<return>
  nnoremap <silent> ,hfef a<%= form.email_field(:cgn) %><esc>/cgn<return>
  nnoremap <silent> ,hfpf a<%= form.password_field(:password) %><esc>/cgn<return>
  nnoremap <silent> ,hfpc a<%= form.password_field(:password_confirmation) %><esc>/cgn<return>
  nnoremap <silent> ,hfse a<%= form.select(:cgn , [], { include_blank: 'select' }, {  }) %><esc>/cgn<return>
  nnoremap <silent> ,hfsb a<%= form.select(:cgn , [], {  }, {  }) do %><esc>o<% end %><esc>/cgn<return>
  nnoremap <silent> ,hfie a<%= render(partial: 'shared/inline_errors', locals: { errors_hash: @cgn.errors.messages, attribute: :cgn, ian: false }) %><esc>/cgn<return>
  nnoremap <silent> ,hfsu a<%= form.submit(:cgn) %><esc>/cgn<return>
  nnoremap <silent> ,hfof a<%= form.(:cgn) %><esc>/cgn<return>

  " html partials
  nnoremap <silent> ,hpbp a<%= render(partial: 'cgn', locals: { cgn }) %><esc>/cgn<return>

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
  nnoremap <silent> ,rrna anamespace :cgn do<return>end<esc>/cgn<return>cgn
  nnoremap <silent> ,rrsc ascope path: :cgn, module: :cgn, as: :cgn do<return>end<esc>/cgn<return>cgn
  nnoremap <silent> ,rrrs aresources :cgn, only: [:index, :show, :create, :update, :destroy]<esc>/cgn<return>cgn
  nnoremap <silent> ,rrrl aresources path: :cgn, controller: :cgn, as: :cgn, only: []<esc>/cgn<return>cgn
  nnoremap <silent> ,rrnr aresources path: :cgn, module: :cgn, as: :cgn do<return>end<esc>/cgn<return>cgn
  nnoremap <silent> ,rrme amember do<return>end<esc>O <backspace><esc>
  nnoremap <silent> ,rrge aget 'cgn', to: :cgn, as: :cgn<esc>/cgn<return>cgn
  nnoremap <silent> ,rrpo apost 'cgn', to: :cgn, as: :cgn<esc>/cgn<return>cgn
  nnoremap <silent> ,rrpa apatch 'cgn', to: :cgn, as: :cgn<esc>/cgn<return>cgn
  nnoremap <silent> ,rrde adelete 'cgn', to: :cgn, as: :cgn<esc>/cgn<return>cgn

  " rails model mappings
  nnoremap <silent> ,rm iHello, World!<esc>

" javascript mappings 
  " javascript selectors / jquery   
    nnoremap <silent> ,jsba a$()<esc>i
    nnoremap <silent> ,jscl a$('.')<esc>hi
    nnoremap <silent> ,jsid a$('#')<esc>hi

  " js code
    nnoremap <silent> ,jcdo a$(document).on(, '', {}, function(event){})<esc>hi<return><esc>klllllllllllllla
    nnoremap <silent> ,jcif iif () {<return>}<esc>kllla
    nnoremap <silent> ,jcel a else {<return>}<esc>O
    nnoremap <silent> ,jcei a else if () {<return>}<esc>klllllllllla

" templates
  " controllers
    nnoremap <silent> ,tcbc :read ../templates/controllers/base_controller.rb<return>ggdd/cgn<return>cgn
    nnoremap <silent> ,tcsb :read ../templates/controllers/actions/show_base.rb<return>/cgn<return>cgn
    nnoremap <silent> ,tcst :read ../templates/controllers/actions/show_tab.rb<return>/cgn<return>cgn
    nnoremap <silent> ,tcsr :read ../templates/controllers/actions/show_router.rb<return>/cgn<return>cgn
  
