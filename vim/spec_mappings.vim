"" Spec Run
"  " Spec Run Current File in terminal
"  nnoremap <silent> ,srcf :call SpecRunCurrentFile(1)<return>:call ToggleTerminalInWindow()<return>q<return><C-c><C-\><C-n>pa<return>
"  " Spec Run Current File 
"  nnoremap <silent> ,srcF :call SpecRunCurrentFile(0)<return>
"  " Spec Run All Files in terminal
"  nnoremap <silent> ,sraf :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>bundle exec rspec spec<return>
"  " Spec Run All Files
"  nnoremap <silent> ,sraF :wa<return>:! bundle exec rspec spec<return>
