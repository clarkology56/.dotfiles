" Named terminals — see prerequisites.vim (FindTerminalBuf / CreateNamedTerminal
" / ToggleTerminalInWindow). Capital letter = reuse current window, no split.
" open terminal (base)
nnoremap <silent> <space>te :call ToggleTerminalInWindow('base', 1)<return>
nnoremap <silent> <space>tE :call ToggleTerminalInWindow('base', 0)<return>
" open terminal console
nnoremap <silent> <space>tc :call ToggleTerminalInWindow('console', 1)<return>
nnoremap <silent> <space>tC :call ToggleTerminalInWindow('console', 0)<return>
" open terminal server logs (rails runs in docker; this follows its output)
nnoremap <silent> <space>ts :call ToggleTerminalInWindow('logs', 1)<return>
nnoremap <silent> <space>tS :call ToggleTerminalInWindow('logs', 0)<return>
" open terminal server debugger
nnoremap <silent> <space>td :call ToggleTerminalInWindow('debugger', 1)<return>
nnoremap <silent> <space>tD :call ToggleTerminalInWindow('debugger', 0)<return>
" open terminal test
nnoremap <silent> <space>tt :call ToggleTerminalInWindow('test', 1)<return>
nnoremap <silent> <space>tT :call ToggleTerminalInWindow('test', 0)<return>
" open terminal Ai (claude — auto-runs `mise run claude` on creation)
nnoremap <silent> <space>ta :call ToggleTerminalInWindow('claude', 1)<return>
nnoremap <silent> <space>tA :call ToggleTerminalInWindow('claude', 0)<return>

" Terminal mode mappings
" make <esc> work as expected (ie send to normal mode)
tnoremap <Esc> <C-\><C-n>
" make jj esc
tnoremap <silent> jj <C-\><C-n>
