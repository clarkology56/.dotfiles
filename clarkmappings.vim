" single key mappings

"single key comma mappings
nnoremap <silent> ,o o <backspace><esc>
nnoremap <silent> ,O O <backspace><esc>
nnoremap <silent> ,# I#<esc>0
nnoremap <silent> ,,# I<delete><esc>0
nnoremap <silent> ,// I//<esc>0
nnoremap <silent> ,,// I<delete><delete><esc>0
nnoremap <silent> ,<! O<!--<esc>o--><esc>Vx0
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
    nnoremap <silent> ,hedi a<div><esc>o</div><esc>kh

    " html inline elements  
    nnoremap <silent> ,hepa a<p></p><esc>hhhh
    nnoremap <silent> ,helt a<%= link_to(cgn, cgn, cgn) %><esc>/cgn<return>
    nnoremap <silent> ,hesp a<span></span><esc>hhhhhhh
    nnoremap <silent> ,hest a<strong></strong><esc>hhhhhhhhh
    nnoremap <silent> ,hebu a<strong></strong><esc>hhhhhhhhh
    
  " html basic erb 
  nnoremap <silent> ,hrif a<%= if  %><esc>o<% end %><esc>khi
  nnoremap <silent> ,hrel o<%= else %><esc>
  nnoremap <silent> ,hrei o<%= elsif  %><esc>hhi
  nnoremap <silent> ,hren o<%= end %><esc>
  nnoremap <silent> ,hrer a<%  %><esc>hhi
  nnoremap <silent> ,hre= a<%=  %><esc>hhi
    
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

" ruby mappings 
  " model mappings
  nnoremap <silent> ,rm iHello, World!<esc>

" javascript mappings 
  " javascript selectors / jquery   
    nnoremap <silent> ,jsba a$()<esc>i
    nnoremap <silent> ,jscl a$('.')<esc>hi
    nnoremap <silent> ,jsid a$('#')<esc>hi
  " js code
    nnoremap <silent> ,jcdo a$(document).on(, '', {}, function(event){})<esc>hi<return><esc>klllllllllllllla

  
