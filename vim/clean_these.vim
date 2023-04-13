
  " normal Vim visual mode u and U change case but I've disabled it
  " so that u and U are undo / redo like normal mode. But if you want
  " to up or down case, do this
  vnoremap <silent> ,vu u
  vnoremap <silent> ,vU U
  
  
  " autofill
  inoremap <silent> <C-space> <C-n>
  
  " prevent return from autocomplete (very annoying because to return you have
  " to hit space then return. Now, tab does autocomplete and return does
  " return
  inoremap <silent> <return> <space><backspace><return>
  
  
