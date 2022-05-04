"" Spec Run
"  " Spec Run Current File in terminal
"  nnoremap <silent> ,srcf :call SpecRunCurrentFile(1)<return>:call ToggleTerminalInWindow()<return>q<return><C-c><C-\><C-n>pa<return>
"  " Spec Run Current File 
"  nnoremap <silent> ,srcF :call SpecRunCurrentFile(0)<return>
"  " Spec Run All Files in terminal
"  nnoremap <silent> ,sraf :wa<return>:call ToggleTerminalInWindow()<return>q<return><C-c>bundle exec rspec spec<return>
"  " Spec Run All Files
"  nnoremap <silent> ,sraF :wa<return>:! bundle exec rspec spec<return>

" Spec Attachable PDf
nnoremap <silent> ,sapd aRack::Test::UploadedFile.new(Rails.root.join('spec', 'support', 'assets', 'pdfs', 'example.pdf'), 'application/pdf')<esc>

" Spec Factories ATtachable
nnoremap <silent> ,sfat atrait :with_ChangeAttachment do<return>ChangeAttachment do<return># DeleteThis - add attachment (,saXX)<return><backspace><backspace>end<return>end<esc>/ChangeAttachment\\|DeleteThis<return>
