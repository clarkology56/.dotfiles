noremap <silent> <A-left> :call GoToNextBuf(0)<return>
noremap <silent> <A-right> :call GoToNextBuf(1)<return>
noremap <silent> <C-k> :call GoToNextBuf(0)<return>
noremap <silent> <C-l> :call GoToNextBuf(1)<return>

function! NextBuf(adj)
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')
  let l:len = len(l:blist)
  let cbuf = bufnr()
  let cpos = index(l:blist, cbuf)
  let ncount = cpos + a:adj
  while ncount > l:len
    let ncount = ncount - l:len
  endwhile
  while ncount <= 0
    let ncount = ncount + l:len
  endwhile
  if ncount == l:len
    let nbuf = l:blist[0]
  else
    let nbuf = l:blist[ncount]
  endif
  return nbuf
endfunction

" Buffer Delete
nnoremap <space>bd :call ClearBuffer()<return>

nnoremap <space>bD :bd!<return>

" Buffer Clear
nnoremap <space>bc :call ClearBuffers()<return>

nnoremap <space>bC :%bd!\|e#\|bd#<return>
" Buffer Terminal 
nnoremap <space>bt :call OpenTerminal()<return>
" need to fix this so that it opens first terminal not first zsh bucause 1)
" some people might not use zsh and 2) there could be multiple terminal and /
" or zsh buffers open
function! OpenTerminal()
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1'), 'v:val.bufnr')
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') == 'terminal'
      execute ':buf' l:item
      return

    endif
  endfor
  execute ':ter'
endfunction
