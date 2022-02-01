function! NoHrefComment()
   execute "normal! a<%# DeleteThis - if styling like link, keep \"no-href-link\" class %>\<return><%# DeleteThis - if styling like icon, keep \"no-href-icon\", add standard icon classes and make display nil %>\<return><%# DeleteThis - if styling like button, remove both classes above and add standard button classes %>"
endfunction
" Embedded Ruby IF
nnoremap <silent> ,hrif a<% if ChangeThisPls %><esc>o<% end %><esc>/ChangeThisPls<return>
" Embedded Ruby IF inline
nnoremap <silent> ,hriF a<% ChangeThisPls if ChangeThisPls %><esc>/ChangeThisPls<return>
" Embedded Ruby If Else
nnoremap <silent> ,hrie a<% if ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
" Embedded Ruby If Else else
nnoremap <silent> ,hriE a<% if ChangeThisPls %><esc>o<% elsif ChangeThisPls %><esc>o<% else %><esc>o<% end %><esc>/ChangeThisPls<return>
" Embedded Ruby UNless
nnoremap <silent> ,hrun a<% unless ChangeThisPls %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby UNless inline
nnoremap <silent> ,hruN a<% ChangeThisPls unless ChangeThisPls %><esc>/ChangeThisPls<return>
" Embedded Ruby CAse
nnoremap <silent> ,hrca a<% case ChangeThisPls %><return><% when ChangeThisPls %><return><% else %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby EAch
nnoremap <silent> ,hrea a<% ChangeThisPls.each do \|ChangeThisPls\| %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby Each With index
nnoremap <silent> ,hrew a<% ChangeThisPls.each_with_index do <bar>ChangeThisPls, index<bar> do %><return><% end %><esc>/ChangeThisPls<return>
" Embedded Ruby ENd
nnoremap <silent> ,hren a<% end %><esc>
" Embedded Ruby PArtial
nnoremap <silent> ,hrpa a<%= render('ChangePath/ChangeTemplate_ChangePartial') %><esc>/ChangePath\\|ChangeTemplate\\|ChangePartial<return>
" Embedded Ruby PArtial (full)
nnoremap <silent> ,hrpA a<div id="ChangePartial_container"><return><%= render('ChangePath/ChangeTemplate_ChangePartial') %><return></div><esc>/ChangePartial\\|ChangePath\\|ChangeTemplate<return>
" Embedded Ruby Puts Debugger
nnoremap <silent> ,hrpd a<% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW' %><return><% puts nil %><return><% puts 'ChangeLabel:' %><return><% puts ChangeThisPls %><esc>/ChangeLabel\\|ChangeThisPls<return>
