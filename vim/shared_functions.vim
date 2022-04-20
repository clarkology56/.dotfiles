" Run tests for current file
function! FileTestCurrentFile(use_shell)
  execute ':wa'
  let test_file = GetTestFile()
  let test_command = substitute(test_file, 'test', 'rails t test', '')
  if a:use_shell == 0
    execute ':!' test_command
  else 
    let @+ = test_command
  endif
endfunction
" Get test file name
function! GetTestFile()
  let file = expand('%')
  " if file is view, js or stylesheet, open test for related controller
  if match(file, 'app/views') != -1
    let file = substitute(expand('%:h'), 'views', 'controllers', '') . '_controller.rb'
  elseif match(file, 'app/assets/stylesheets') != -1
    let file = substitute(expand('%:h'), 'assets/stylesheets', 'controllers', '') . '_controller.rb'
  elseif match(file, 'app/javascript/packs') != -1
    let file = substitute(expand('%:h'), 'javascript/packs', 'controllers', '') . '_controller.rb'
  endif
  " modify file name for non test files
  if index(split(file, '/'), 'test') == -1
    let file = substitute(file, '.rb', '_test.rb', '')
  endif
  return substitute(file, 'app\|lib\|test', 'test', '')
endfunction

" Run spec for current file
function! SpecRunCurrentFile(use_shell)
  execute ':wa'
  let test_file = GetSpecFile()
  let test_command = 'bundle exec rspec ' . test_file
  if a:use_shell == 0
    execute ':!' test_command
  else 
    let @+ = test_command
  endif
endfunction

function! GetSpecFile()
  let file = expand('%')
  " if file is active admin, convert active admin file path to admin
  " controller file path
  if match(file, 'app/admin') != -1
    let file = substitute(file, 'app/admin', 'app/controllers/admin', '')
    let file = substitute(file, '.rb', '_controller.rb', '')
  endif
  " if file is view, js or stylesheet, open test for related controller
  if match(file, 'app/views') != -1
    let file = substitute(expand('%:h'), 'views', 'controllers', '') . '_controller.rb'
  elseif match(file, 'app/assets/stylesheets') != -1
    let file = substitute(expand('%:h'), 'assets/stylesheets', 'controllers', '') . '_controller.rb'
  elseif match(file, 'app/javascript/packs') != -1
    let file = substitute(expand('%:h'), 'javascript/packs', 'controllers', '') . '_controller.rb'
  endif
  " modify file name for non spec files
  if index(split(file, '/'), 'spec') == -1
    let file = substitute(file, '.rb', '_spec.rb', '')
  endif
  return substitute(file, 'app\|lib\|spec', 'spec', '')
endfunction

" Tests Included and Not included
function! TestIncludedNotIncluded()
  execute "normal! aincluded = [ChangeTable(:ChangeFixture).id]\<return>included << ChangeTable(:ChangeFixture).id\<return>assert_equal included.sort, (result & included).sort\<return>not_included = [ChangeTable(:ChangeFixture).id]\<return>not_included << ChangeTable(:ChangeFixture).id\<return>assert_empty not_included & result"
endfunction

function! CreateBaseFile(class_or_module, include_outer_followup, include_inner_followup)
  let current_file = expand('%:r')
  " lib files and lib file tests (ie all non-app files that are tested) skip one level
  " (skip 'lib' or 'test') but do not skip second level (ie keep 'servies' or
  " 'integrations' etc.)
  if match(current_file, '/channels\|/controllers\|/helpers\|p/jobs\|/mailers\|/models') == -1
    let skip_levels = 1
  " app files and app file tests skip 2 levels (skip 'app' or 'test' and next level, ex
  " 'controllers' or 'helpers' etc.)
  else
    let skip_levels = 2
  endif

  let splits = split(current_file, '/')
  let length = len(splits)
  let count = 1
  for split in splits
    if count > skip_levels
      execute "normal! o\<space>\<backspace>"
      " regex below will create camel case only after '_' so need to manually
      " add '_' before first word
      execute "normal! a_" . split
      if count == length
        let class_or_module = 'class'
      else
        let class_or_module = 'module'
      endif
      execute 'normal! I' . class_or_module . ' '
    endif
    let count = count + 1
  endfor

  " make camel case by replacing all _x with X
  %s/_\([a-zA-Z]\)/\u\1/g

  let count = skip_levels
  while count < length
    execute "normal! oend"
    let count = count + 1
  endwhile

  execute "normal! ggi# frozen_string_literal: true\<return>\<return>\<backspace>\<backspace>"

  if a:include_outer_followup == 1
    normal! oouter_followup
  endif

  let @/ = 'class'
  execute "normal! nO# ChangeTopLevelDocumentation"

  if a:include_inner_followup == 1
    execute "normal! \<down>oinner_followup"
  elseif a:class_or_module == 1
    execute "normal! \<down>odef initialize(ChangeArgs)\<return>end"
  endif

  let @/ = 'class'
  if a:class_or_module == 0
    normal! ncgnmodule
  endif
  let @/ = 'ChangeTopLevelDocumentation\|ChangeArgs'
  normal! n
endfunction

function! IndentTemplate(start, delete_start, indentations, template)
  " indent by indendations argument. If 0, indent based on current
  " cursor position
  if a:indentations == 0
    " go to starting point if there is one.
    if a:start != ''
      let @/ = a:start
      normal! n
      " when there is a starting point, the cursor is actually 1 column too
      " far compared to when on an empty line so subtract 1
      let indentations = (col('.') - 1) /  2
    else
      let indentations = col('.') /  2
    endif 
  else
    let indentations = a:indentations
  endif
  "before reading template, we go <up> one line. This breaks if we are on the
  "first line, so add a line in that situation
  if line('.') == 1
    normal! o
  endif
  " search for start / cursor position is reset after each execute command, so if there is a
  " start, it must be searched again and it must be search again and all in
  " one inline command
  if a:start == ''
    if indentations == 0
      execute "normal! \<up>:read " . a:template . " \<return>"
    else
      execute "normal! mt\<up>:read " . a:template . " \<return>0v`t" . indentations . ">"
    endif
  else
    if indentations == 0
      execute "normal! /" . a:start . "\<return>\<up>:read " . a:template . " \<return>"
    else
      execute "normal! /" . a:start . "\<return>mt\<up>:read " . a:template . " \<return>0v`t" . indentations . ">"
    endif
    if a:delete_start == 1
      execute "normal! /" . a:start . "\<return>dd"
    endif
  endif
  normal! gg
endfunction

function! ToggleTerminalInWindow()
  " set to false (this will be used later)
  let termInWindow = 0
  " if buffer in current window is terminal, go to terminal mode
  if getbufvar(bufnr(), '&buftype') == 'terminal'
    execute 'normal! a'
    let termInWindow = 1
  " else, find buffers in open windows and if terminlal is in an open window, switch
  " to that window and skip the rest of the function
  else
    let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 0'), 'v:val.bufnr')
    for l:item in l:blist
      if getbufvar(l:item, '&buftype') == 'terminal' && termInWindow == 0
        let windowNr = bufwinnr(l:item)
        execute windowNr 'wincmd w'
        execute 'normal! a'
        let termInWindow = 1
      endif
    endfor
  endif
  " if none of the open windows include a terminal, continue 
  if termInWindow == 0
    " open a new window at the bottom of the screen
    execute ':bo sp'
    " if there is a terminal in a buffer, open that buffer in widnow at bottom
    " of screen
    let l:blist = map(filter(copy(getbufinfo()), 'v:val.listed == 1 && v:val.hidden == 1'), 'v:val.bufnr')
    let termInBuffer = 0
    for l:item in l:blist
      if getbufvar(l:item, '&buftype') == 'terminal' && termInBuffer != 1
        execute ':buf' l:item
        execute 'normal! a'
        let termInBuffer = 1
      endif
    endfor
    " if no windows or buffers have terminal, open new terminal buffer in window
    " at bottom of screen
    if termInBuffer == 0
      execute ':ter'
      execute 'normal! a'
    endif
  endif
  " would be nice to run: execute "normal! \<esc>q<return>\<C-c>\<esc>"
  " but that doesn't work from shell... so any mapping that uses this needs to
  " have that in it... sad
endfunction

function! ReadTemplate(path)
  echo g:path_to_templates . a:path
  execute "normal! :read " . g:path_to_templates . a:path . "\<return>"
endfunction
