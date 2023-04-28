" open terminal (base)
nnoremap <silent> <space>te :call ToggleTerminalInWindow(0)<return>
" open terminal console
nnoremap <silent> <space>tc :call ToggleTerminalInWindow(1)<return>
" open terminal server
nnoremap <silent> <space>ts :call ToggleTerminalInWindow(2)<return>
" open terminal server debugger
nnoremap <silent> <space>td :call ToggleTerminalInWindow(3)<return>
" open terminal test
nnoremap <silent> <space>tt :call ToggleTerminalInWindow(4)<return>

" Terminal mode mappings
" make <esc> work as expected (ie send to normal mode)
tnoremap <Esc> <C-\><C-n>
