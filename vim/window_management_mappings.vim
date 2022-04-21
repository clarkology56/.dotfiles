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
" window move
nnoremap <silent> <space>wj <C-w>H
nnoremap <silent> <space>wk <C-w>J
nnoremap <silent> <space>wl <C-w>K
nnoremap <silent> <space>w; <C-w>L

" Window Close
nnoremap <silent> <space>wc :call ClearBuffer()<return>:close<return><C-W>=
nmap <silent> <space>wd <space>wc
" Window Maximize (close all others)
nnoremap <silent> <space>wm :only<return>:wa<return>:call ClearBuffers()<return>
" Window Terminal
nnoremap <silent> <space>wt :call ToggleTerminalInWindow()<return>
