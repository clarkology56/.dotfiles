" VIm Indent Template
nnoremap <silent> ,viit a:call IndentTemplate('ChangeStart', ChangeDeleteStart, ChangeIndentations, 'ChangeTemplate')<rreturn><return>" ChangeStart - search for text regarding where to start. if '', then current cursor position will be used<return>ChangeDeleteStart - 0 to keep start text and 1 to delete entire line for start text. If start is '', then this argument doesn't matter (but still needs to be included so there are 4 total arguments)<return>ChangeIndentations - indent by ChangeIndentations argument. If 0, indent based on current cursor position<return>ChangeTemplate is the location of the template to read<esc>/rreturn<return>cgnreturn<esc>/ChangeStart\\|ChangeDeleteStart\\|ChangeIndentations\\|ChangeTemplate<return>

" VIm INput
nnoremap <silent> ,viin alet change_var = input("ChangeInstructions: ", ChangeDefault)<esc>/change_var\\|ChangeInstructions\\|ChangeDefault<return>
