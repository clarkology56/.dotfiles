" single key space mappings
 nnoremap <silent> <space>q :q<return>
 nnoremap <silent> <space>Q :wa!<return>:only<return>:q<return>
 nnoremap <silent> <space>; :
 "
" single key comma mappings
  " visual mode
  nnoremap <space>v <C-v>
  " various comments
  nnoremap <silent> <space>< O<!--<esc>o--><esc>Vx0
  nnoremap <silent> <space>> /<!--<return>Nddmq/--><return>dd`q
  " replace single quite with double quote and vice versa
  nnoremap <silent> <space>' /"<return>cgn'<esc>N.:noh<return>
  nnoremap <silent> <space>" /'<return>cgn"<esc>N.:noh<return>
