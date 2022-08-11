" this goes after open ToggleTerminalInWindow to clear everything
" q twice to ensure it closes q things followed by <C-c> to get new line
" in case you were not on a q thing; Then !!! to exit debugger
" followd by control c just to be extra safe. NOTE this will not
" exit IRB or railes console. Those are tricky because if you do
" <C-d> or exit<return> but you are not in shell / not the console, then it
" will close the terminal which is not what you want. <C-z> will close the
" console without closing the terminal which is nice but if you hit <C-z> from
" debugger, it exits debugger without closing it propperly... so the next time
" you run your tests, they won't actually start. They get 'hung up'. At the
" end of the day, this is good enough because if you are in the console, you
" probably don't want to quit it automatically here. You probably should quit
" it manually just to be safe
" q<C-\><C-n>aq<C-c>!!!<return><C-c>
" Git Status
nnoremap <silent> <space>gist :wa<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c>git status<return><C-\><C-n>
" Git Diff
nnoremap <silent> <space>gid :wa<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c>git diff<return>
" Git Rubocop (not really git but always done before committing)
nnoremap <silent> <space>giru :wa<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c>rubocop<return><C-\><C-n>
" Git rspEc
nnoremap <silent> <space>gisp :call SpecRunCurrentFile(1)<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c><C-\><C-n>pa<return><C-\><C-n>
" Git rspEc - all files
nnoremap <silent> <space>gisP :wa<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c>bundle exec rspec spec<return><C-\><C-n>
" Git Test
nnoremap <silent> <space>gite :call FileTestCurrentFile(1)<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c><C-\><C-n>pa<return><C-\><C-n>
" Git Test - all files
nnoremap <silent> <space>gitE wa<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c>rails t<return><C-\><C-n>

" Git Push (saves, adds, commits with WIP, and pushes)
nnoremap <silent> <space>gipu :wa<return>:call GitPush()<return>
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
nnoremap <silent> <space>gilo :wa<return>:call ToggleTerminalInWindow()<return>q<C-\><C-n>aq<C-c>!!!<return><C-c>git log --oneline --graph<return
