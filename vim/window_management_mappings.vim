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

" Window Split current window
nnoremap <silent> <space>ws :sp<return>:call GoToNextWindow(1)<return>:set wrap<return><C-W>=
" Window Split from entire screen
nnoremap <silent> <space>wS :botright split<return>:call GoToNextWindow(1)<return>:set wrap<return><C-W>=
" Window split Vertically
nnoremap <silent> <space>wv :vsp<return>:call GoToNextWindow(1)<return>:set wrap<return><C-W>=
" Window split Vertically from entire screen
nnoremap <silent> <space>wV :vertical botright split<return>:call GoToNextWindow(1)<return>:set wrap<return><C-W>=
" Window equalize sizes
nnoremap <silent> <space>we <C-W>=
" Window Close
nnoremap <silent> <space>wc :close<return><C-W>=
nnoremap <silent> <space>wd :close<return><C-W>=
" Window Maximize (close all others)
nnoremap <silent> <space>wm :only<return>
" Window Terminal
nnoremap <silent> <space>wt :call ToggleTerminalInWindow()<return>
