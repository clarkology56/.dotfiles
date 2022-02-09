" Git Push (saves, adds, commits with WIP, and pushes)
nnoremap <silent> <space>gp :wa<return>:call GitPush()<return>
function! GitPush()
  let commitMessage = input("Changes saved. Please leave a commit message (leave blank for \"WIP\"): ")
  if commitMessage == ""
    let commitMessage = "WIP"
  endif
  execute "normal! :! git add -A\<return>"
  execute "normal! :! git commit -am \"" . commitMessage . "\"\<return>"
  execute "normal! :! git push\<return>"
  execute "normal! :! git status\<return>"
endfunction
nnoremap <silent> <space>gP :wa<return>:call ToggleTerminalInWindow()<return><C-c><esc>agacp<return>
" Git Status
nnoremap <silent> <space>gs :wa<return>:! git status<return>
