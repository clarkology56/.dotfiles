" File Paste Partial Path
nnoremap <silent> <space>fppp :call FilePastePartialPath()<return>
function! FilePastePartialPath()
  let @+ = substitute(expand('%:h'), 'app/views/', '', '')
  let @/ = 'ChangePath'
  normal! nviwp
endfunction

" File Copy Current File
nnoremap <silent> <space>fccf :let @+ = expand('%')<return>
function! FileCopyCurrentFile()
  let @+ = expand('%')
endfunction
" File Copy Current Name
nnoremap <silent> <space>fccn :let @+ = expand("%:t:r")<return>
" File Copy Current Path
nnoremap <silent> <space>fccp :let @+ = expand('%:h') . '/'<return>
" File Copy Partial File
nnoremap <silent> <space>fcpf :call FileCopyPartialFile()<return>
function! FileCopyPartialFile()
  let view_file = split(expand('%'), 'app/views/')[-1]
  echo view_file
  let view_file = split(view_file, '.html')[0]
  echo view_file
  let view_file = substitute(view_file, '/_', '/', '')
  echo view_file
  let @+ = view_file
endfunction
" File Copy Partial Path
nnoremap <silent> <space>fcpp :call FileCopyPartialPath()<return>
function! FileCopyPartialPath()
  let @+ = substitute(expand('%:h'), 'app/views/', '', '')
endfunction