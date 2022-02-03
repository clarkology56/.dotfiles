" Do not tab to terminal window
nnoremap <silent> <S-tab> :call GoToNextWindow(0, 1)<return><esc>
nnoremap <silent> <tab> :call GoToNextWindow(1, 1)<return><esc>
function GoToNextWindow(direction, attempt)
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
  " skip terminal windows
  if getbufvar(bufnr(), '&buftype') == 'terminal' 
    " prevent endless loop in case that all windows are terminals
    if a:attempt < window_count
      call GoToNextWindow(a:direction, a:attempt + 1)
    endif
  end
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
nnoremap <space>ws :sp<return>:set wrap<return>
" Window split Vertically
nnoremap <space>wv :vsp<return><tab>:set wrap<return>
" Window Close
nnoremap <space>wc :close<return>
nnoremap <space>wd :close<return>
" Window Maximize (close all others)
nnoremap <space>wm :only<return>
" Window Terminal
nnoremap <space>wt :call OpenTerminalInWindow()<return>
function! OpenTerminalInWindow()
  " find buffers in open windows and if terminlal is in an open window, switch
  " to that window and skip the rest of the function
  let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 0'), 'v:val.bufnr')
  let termInWindow = 0
  for l:item in l:blist
    if getbufvar(l:item, '&buftype') == 'terminal' && termInWindow != 1
      let windowNr = bufwinnr(l:item)
      execute windowNr 'wincmd w'
      let termInWindow = 1
    endif
  endfor
  " if none of the open windows include a terminal, continue 
  if termInWindow == 0
    " open a new window at the bottom of the screen
    execute ':bo sp'
    " if there is a terminal in a buffer, open that buffer in widnow at bottom
    " of screen
    let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 1'), 'v:val.bufnr')
    let termInBuffer = 0
    for l:item in l:blist
      if getbufvar(l:item, '&buftype') == 'terminal' && termInBuffer != 1
        execute ':buf' l:item
        let termInBuffer = 1
      endif
    endfor
    " if no windows or buffers have terminal, open new terminal buffer in window
    " at bottom of screen
    if termInBuffer == 0
      execute ':ter'
    endif
  endif
  " would be nice to run: execute "normal! \<esc>\<C-c>\<esc>"
  " but that doesn't work from shell... so any mapping that uses this needs to
  " have that in it... sad
endfunction
