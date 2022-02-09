" Spec Run
  " Spec Run Current File in terminal
  nnoremap <silent> ,srcf :call SpecRunCurrentFile(1)<return>:call ToggleTerminalInWindow()<return><C-c><C-\><C-n>pa<return>
  " Spec Run Current File 
  nnoremap <silent> ,srcF :call SpecRunCurrentFile(0)<return>
  function! SpecRunCurrentFile(use_shell)
    execute ':wa'
    let test_file = GetSpecFile()
    let test_command = 'rspec ' . test_file
    if a:use_shell == 0
      execute ':!' test_command
    else 
      let @+ = test_command
    endif
  endfunction
  " Spec Run All Files in terminal
  nnoremap <silent> ,sraf :wa<return>:call ToggleTerminalInWindow()<return><C-c>rspec spec<return>
  " Spec Run All Files
  nnoremap <silent> ,sraF :wa<return>:! rspec spec<return>
