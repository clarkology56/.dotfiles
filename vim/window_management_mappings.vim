" Do not tab to terminal window
nnoremap <silent> <S-tab> :call GoToNextWindow(0)<return><esc>
nnoremap <silent> <tab> :call GoToNextWindow(1)<return><esc>
function GoToNextWindow(direction)
  let window_count = winnr('$')
  let current_window = winnr()
  if a:direction == 1
    if current_window < window_count
      let target_window = current_window + 1
    else 
      let target_window = 1
    endif
  else
    if current_window == 1
      let target_window = window_count
    else 
      let target_window = current_window - 1
    endif
  endif
  execute "normal! " . target_window . "\<C-w>\<C-w>"
endfunction

function! GoToNextBuf(direction)
  if a:direction == 1
    let adj = 1
  else
    let adj = -1
  end
  let continue = 1
  while continue 
    let nbuf = NextBuf(adj)
    if nbuf == bufnr()
      let continue = 0
    endif
    if getbufvar(nbuf, '&buftype') == 'terminal'
      if a:direction == 1
        let adj = adj + 1
      else
        let adj = adj - 1
      endif
    else
      let continue = 0
    endif
  endwhile
  exec ':buf' nbuf 
endfunction

" Window Split
nnoremap <space>ws :sp<return>:call GoToNextWindow(1)<return>:set wrap<return>
" Window split Vertically
nnoremap <space>wv :vsp<return>:call GoToNextWindow(1)<return>:set wrap<return>
" Window Close
nnoremap <space>wc :close<return>
nnoremap <space>wd :close<return>
" Window Maximize (close all others)
nnoremap <space>wm :only<return>
" Window Terminal
nnoremap <space>wt :call ToggleTerminalInWindow()<return>
