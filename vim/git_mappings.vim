" Git Status
nnoremap <silent> <space>gs :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>git status<return><C-\><C-n>
" Git Diff
nnoremap <silent> <space>gd :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>git diff<return><C-\><C-n>
" Git Rubocop (not really git but always done before committing)
nnoremap <silent> <space>gr :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>rubocop<return><C-\><C-n>
" Git rspEc (not really git but always done before committing)
nnoremap <silent> <space>ge :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>bundle exec rspec spec<return><C-\><C-n>
" Spec Run Current File in terminal
nnoremap <silent> <space>ge :call SpecRunCurrentFile(1)<return>:call ToggleTerminalInWindow()<return>q<return><C-c><C-\><C-n>pa<return><C-\><C-n>
" Spec Run All Files in terminal
nnoremap <silent> <space>gE :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>bundle exec rspec spec<return><C-\><C-n>
" File Test Current File in terminal
nnoremap <silent> <space>gt :call FileTestCurrentFile(1)<return>:call ToggleTerminalInWindow()<return>q<return><C-c><C-\><C-n>pa<return><C-\><C-n>
" File Test All Files in terminal
nnoremap <silent> <space>gT :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>rails t<return><C-\><C-n>

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
" Git Log Oneline
nnoremap <silent> <space>gl :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>git log --oneline --graph<return>
