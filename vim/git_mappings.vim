" Git Push (saves, adds, commits with WIP, and pushes)
nnoremap <silent> <space>gp :wa<return>:call GitPush()<return>
function! GitPush()
  let commitMessage = input("Please leave a commit message: ")
  if commitMessage == ""
    echo 'push cancelled'
  else
    execute "normal! :wa\<return>"
    execute "normal! :! git add -A\<return>"
    execute "normal! :! git commit -am \"" . commitMessage . "\"\<return>"
    execute "normal! :! git push\<return>"
    execute "normal! :! git status\<return>"
  endif
endfunction
" Git Status
nnoremap <silent> <space>gs :wa<return>:! git status<return>
" Git Log Oneline
nnoremap <silent> <space>gl :wa<return>:call ToggleTerminalInWindow()<return><C-c>git log --oneline --graph<return>
" Git Rubocop (not really git but always done before committing
nnoremap <silent> <space>gr :wa<return>:call ToggleTerminalInWindow()<return><C-c>rubocop<return>
" Git Diff
nnoremap <silent> <space>gd :wa<return>:call ToggleTerminalInWindow()<return><C-c>git diff<return>
