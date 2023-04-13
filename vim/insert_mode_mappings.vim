" insert mode non-leader key mappings
  " bar options
  inoremap <silent> <bar><bar><bar> <bar><bar><left>
  inoremap <silent> <bar><bar><space> <bar><bar><space>
  inoremap <silent> <bar><bar>= <bar><bar>=
  " ruby interpolation
  inoremap <silent> ## #{}<left>
  " js interpolation
  inoremap <silent> $$ ${}<left>
  " erb
  inoremap <silent> <<< <%  %><left><left><left>
  " erb entered
  inoremap <silent> >>> <%=  %><left><left><left>
  " erb comment
  inoremap <silent> <<> <%#  %><left><left><left>
