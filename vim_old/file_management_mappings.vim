" Simple File Mappings
  " File Delete 
  nnoremap <silent> <space>fd :call FileDelete()<return>
  function! FileDelete()
    let current_file = expand('%')
    let confirmation = input("Delete file at: " . current_file . "\"? (y/n): ") 
    if confirmation == 'y'
      call delete(expand('%')) | bdelete!
    endif
  endfunction
  " File Move
  nnoremap <silent> <space>fm :call FileMove()<return>
  function! FileMove()
    wa
    let current_file = expand('%')
    let new_file = input("Move \"" . current_file . "\" to: ", current_file) 
    if new_file == ''
      execute "normal! :echo"
      echo "Move cancelled"
    elseif current_file == new_file
      execute "normal! :echo"
    elseif filereadable(new_file)
      execute "normal! :echo"
      echo "\nFile already exists at \"" . new_file '". Please try a different destination path.'
    else
      execute "e " . new_file
      normal aa
      w
      execute "! mv " . current_file . ' ' . new_file
      execute "bd " . current_file
      wa
    endif 
  endfunction
  nnoremap <silent> <space>fr :call FileRename()<return>
  function! FileRename()
    wa
    let current_file = expand('%')
    let current_path = expand('%:h')
    let current_file_name = expand('%:t')
    let new_file_name = input("Rename \"" . current_file_name . "\" to: ", current_file_name) 
    if new_file_name == ''
      execute "normal! :echo"
      echo "Rename cancelled"
    elseif current_file_name == new_file_name
      execute "normal! :echo"
    elseif filereadable(current_path . "/" . new_file_name)
      execute "normal! :echo"
      echo "\nFile already exists at \"" . current_path . "/" . new_file_name '". Please try a different name.'
    else
      execute "e " . current_path . "/" . new_file_name
      normal aa
      w
      execute "! mv " . current_file . ' ' . current_path . "/" . new_file_name
      execute "bd " . current_file
      wa
    endif 
  endfunction

  " Create directories before saving files in directories that do not exist
  " Ex.:
  " :e some_new_dir/some_file.txt
  " :w
  " before saving, a new directory 'some_new_dir' will be created so that
  " 'some_file.txt' can be saved 
  " works for multiple dirs at same time too. Ex:
  " :e some new_dir/some_sub_dir/another/some_file.txt
  augroup Mkdir
    autocmd!
    autocmd BufWritePre * call mkdir(expand("<afile>:p:h"), "p")
  augroup END
  " File Save (all)
  nnoremap <silent> <space>fs :wa<return>
  " File eXplore
  nnoremap <silent> <space>fx :wa<return>:let g:came_from_buf_num = bufnr()<return>:Explore<return>
  nnoremap <silent> <space>fX :wa<return>:Explore .git/..<return>
  
" File Paste
  " File Paste Partial Path
  nnoremap <silent> <space>fppp :call FilePastePartialPath()<return>
  function! FilePastePartialPath()
    let @+ = substitute(expand('%:h'), 'app/views/', '', '')
    let @/ = 'ChangePath'
    normal! nviwp
  endfunction

" File Copy
  " File Copy File Name
  nnoremap <silent> <space>fcfn :let @+ = expand("%:t:r")<return>
  " File Copy Current Path
  nnoremap <silent> <space>fccp :let @+ = expand('%:h') . '/'<return>
  " File Copy Current File
  nnoremap <silent> <space>fccf :let @+ = expand('%')<return>
  function! FileCopyCurrentFile()
    let @+ = expand('%')
  endfunction
  " File Copy Partial Path
  nnoremap <silent> <space>fcpp :call FileCopyPartialPath()<return>
  function! FileCopyPartialPath()
    let @+ = substitute(expand('%:h'), 'app/views/', '', '')
  endfunction
  " File Copy Partial File
  nnoremap <silent> <space>fcpf :let @+ = expand('%')<return>$a<return><esc>p<up>/app\/views\/<return>cgn<esc>dd
  " File Copy Rails Test
  nnoremap <silent> <space>fcrt :call FileCopyRailsTest()<return>
  function! FileCopyRailsTest()
    wa
    let @+ = 'rails t ' . expand('%')
  endfunction

" File Find
  nnoremap <silent> <space>ffff :e **/*
  nnoremap <silent> <space>ffac :e app/config/**/*
  nnoremap <silent> <space>ffad :e app/admin/**/*
  nnoremap <silent> <space>ffap :e app/api/**/*
  nnoremap <silent> <space>ffas :e app/assets/**/*
  nnoremap <silent> <space>ffch :e app/channels/**/*
  nnoremap <silent> <space>ffco :e app/controllers/**/*
  nnoremap <silent> <space>ffhe :e app/helpers/**/*
  nnoremap <silent> <space>ffja :e app/javascript/**/*
  nnoremap <silent> <space>ffjo :e app/jobs/**/*
  nnoremap <silent> <space>ffma :e app/mailers/**/*
  nnoremap <silent> <space>ffmo :e app/models/**/*
  nnoremap <silent> <space>ffvi :e app/views/**/*
  nnoremap <silent> <space>ffli :e lib/**/*
  nnoremap <silent> <space>fffa :e test/factories/**/*
  nnoremap <silent> <space>ffrs :e spec/**/*
  nnoremap <silent> <space>ffte :e test/**/*
  nnoremap <silent> <space>fftm :e templates/**/*
  nnoremap <silent> <space>ffcm :e app/components/**/*
  nnoremap <silent> <space>ffho :e app/hooks/**/*
  nnoremap <silent> <space>ffsc :e app/screens/**/*
  nnoremap <silent> <space>ffut :e lib/utilities/**/*
  

" File Edit (and Explore)
  " Misc. Shortcuts
    " File Edit Current Path
    nnoremap <silent> <space>fecp :let @+ = expand('%:h') . '/'<return>:e <C-R><C-R>+<space><backspace>
    " File Edit CLipboard
    " nnoremap <silent> <space>fecl :e <C-R><C-R>+<return>
    nnoremap <silent> <space>fecl :call FileEditClipBoad()<return>
    nnoremap <silent> <space>fecL :call WindowSplitVerdically()<return>:call FileEditClipBoad()<return>
    function FileEditClipBoad()
      let split = split(@+, ':')
      let file = split[0]
      if len(split) > 1
        execute "normal! :e " . split[0]. "\<return>" . split[1] . "G"
      else
        execute "normal! :e \<C-R>\<C-R>+\<return>"
      endif
    endfunction
    " File Edit PArtial
    nnoremap <silent> <space>fepr :call FileCreatePartial()<return>
    function! FileCreatePartial()
      let directory = expand('%:h')
      let new_file = input("Create new partial (prefix of \"_\" and extention of \".html.erb\" will be added automatically): ")
      execute ':e ' . directory . '/_' . new_file . '.html.erb'
    endfunction

  " Explore specific diriectories & edit specific files
    " Rails
      " File Edit Children Files
      nnoremap <silent> <space>fecf :call FileEditChildrenFiles()<return>
      function FileEditChildrenFiles()
        let directory = expand('%:r')
        if isdirectory(directory)
          execute ':Explore' directory
        else
          let new_file = input("There are no children files yet. Create the first one!: " . directory . "/")
          if new_file == ''
            execute "normal! :echo"
          else
            execute ":e " . directory . "/" . new_file
          endif
        endif
      endfunction
      " File Edit Parent Files
      nnoremap <silent> <space>fepf :call FileEditParentFiles()<return>
      function FileEditParentFiles()
        let split = split(expand('%:r'), '/')
        call remove(split, -1)
        let file = join(split, '/') . '.rb'
        execute ':e' file
      endfunction
      " File Edit ASets
      nnoremap <silent> <space>feas :Explore .git/../app/assets<return>
      nnoremap <silent> <space>feaS :call WindowSplitVerdically()<return>:Explore .git/../app/assets<return>
      " File Edit FIxtures
      nnoremap <silent> <space>fefi :Explore .git/../test/fixtures<return>
      nnoremap <silent> <space>fefI :call WindowSplitVerdically()<return>:Explore .git/../test/fixtures<return>
      " File Edit FActory
      nnoremap <silent> <space>fefa :call FileEditFactories(0)<return>
      nnoremap <silent> <space>fefA :call FileEditFactories(1)<return>
      function FileEditFactories(split_window)
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        " for Highway
        if filereadable('spec/factories.rb') == 1
          execute ':e spec/factories.rb'
        " for my apps
        else
          if stridx(expand('%'), 'app/models') == 0
            let app = split(expand('%'), '/')[2]
            execute ':e test/factories/' . app
          else
            execute ':e test/factories'
          endif
        endif
      endfunction
      " File Edit Db Schema
      nnoremap <silent> <space>feds :e db/schema.rb<return>
      nnoremap <silent> <space>fedS :call WindowSplitVerdically()<return>:e db/schema.rb<return>
      " File Edit ROutes
      nnoremap <silent> <space>fero :e config/routes.rb<return>
      nnoremap <silent> <space>ferO :call WindowSplitVerdically()<return>:e config/routes.rb<return>
      " File Edit ABility
      nnoremap <silent> <space>feab :e app/models/ability.rb<return>
      nnoremap <silent> <space>feaB :call WindowSplitVerdically()<return>:e app/models/ability.rb<return>
      " File Edit GEmfile
      nnoremap <silent> <space>fege :e Gemfile<return>
      nnoremap <silent> <space>fegE :call WindowSplitVerdically()<return>:e Gemfile<return>
      " File Edit REadme
      nnoremap <silent> <space>fere :e README.md<return>
      nnoremap <silent> <space>ferE :call WindowSplitVerdically()<return>:e README.md<return>
    " react Native
    " Vim
      " File Edit Swap Files (for deleting swap files
      nnoremap <silent> <space>fesw :Explore ~/.local/share/nvim/swap/<return>
      nnoremap <silent> <space>fesW :call WindowSplitVerdically()<return>:Explore ~/.local/share/nvim/swap/<return>

  " Edit specific files dynamically
    " File Edit STyles
    nnoremap <silent> <space>fest :call FileEditeStyle()<return>
    function FileEditeStyle()
      let current_file = expand('%')
      " Rails
      if match(current_file, 'app/assets/stylesheets') != -1
        let directory = expand('%:h')
      elseif match(current_file, 'app/controllers') != -1
        let directory = substitute(expand('%'), 'controllers', 'assets/stylesheets', '')
        let directory = substitute(directory, '_controller.rb', '', '')
      elseif match(current_file, 'app/helpers') != -1
        let directory = substitute(expand('%'), 'helpers', 'assets/stylesheets', '')
        let directory = substitute(directory, '_helper.rb', '', '')
      elseif match(current_file, 'app/javascript/packs') != -1
        let directory = substitute(expand('%:h'), 'javascript/packs', 'assets/stylesheets', '')
      " Rails views will not end in .js
      elseif (match(current_file, 'app/views') != -1) && (match(current_file, '.js') == -1)
        let directory = substitute(expand('%:h'), 'views', 'assets/stylesheets', '')
      elseif match(current_file, 'test/controllers') != -1
        let directory = substitute(expand('%'), 'test/controllers', 'app/assets/stylesheets', '')
        let directory = substitute(directory, '_controller_test.rb', '', '')
      elseif match(current_file, 'spec/controllers') != -1
        let directory = substitute(expand('%'), 'spec/controllers', 'app/assets/stylesheets', '')
        let directory = substitute(directory, '_controller_test.rb', '', '')
      " React native
      elseif match(current_file, 'styles.js') != -1
        let directory = 2
        let file = current_file
      elseif match(current_file, '.js') != -1
        let directory = 2
        let file = expand('%:h') . '/styles.js'
      else 
        let directory = 1
      endif

      " unable to find directory
      if directory == 1
        echo 'Unable to find styles for' current_file
      " app is react native
      elseif directory == 2
        if file == current_file
          echo 'Already on styles file'
        else
          execute ':e' file
        endif
      " app is rails
      else
        if isdirectory(directory)
          execute ':Explore' directory
        else
          let new_file = input("There are no style files yet. Create the first one!: " . directory . "/")
          if new_file == ''
            execute "normal! :echo"
          else
            execute ":e " . directory . "/" . new_file
          endif
        endif
      endif
    endfunction

    " File Edit Children Controllers
    nnoremap <silent> <space>fecc :call FileEditChildController(0)<return>
    nnoremap <silent> <space>fecC :call FileEditChildController(1)<return>
    function FileEditChildController(split_window)
      let current_file = expand('%')
      " remove 12 characters for _controller so that ex. jobs_controller
      " becomes jobs
      let directory_of_children = split(current_file, '\.')[0][0:-12]
      if isdirectory(directory_of_children)
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        execute ':Explore' directory_of_children
      else
        let new_file = input("There are no child controller files yet. Create the first one!: " . directory_of_children . "/")
        if new_file == ''
          if a:split_window == 1
            call WindowSplitVerdically()
          endif
          execute "normal! :echo"
        else
          if a:split_window == 1
            call WindowSplitVerdically()
          endif
          execute ":e " . directory_of_children . "/" . new_file
        endif
      endif
    endfunction

    " File Edit Parent Controllers
    nnoremap <silent> <space>fepc :call FileEditParentController(0)<return>
    nnoremap <silent> <space>fepC :call FileEditParentController(1)<return>
    function FileEditParentController(split_window)
      let current_file = expand('%')
      let parent = join(split(current_file, '/')[0:-2], '/') . '_controller.rb'
      if filereadable(parent)
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        execute ':e' parent
      else
        let grandparent = join(split(parent, '/')[0:-2], '/')
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        execute ':Explore ' grandparent
      endif
    endfunction

    " File Edit COntroller
    " NOTE: thi is used for rails controllers
    nnoremap <silent> <space>feco :call FileEditController(0)<return>
    nnoremap <silent> <space>fecO :call FileEditController(1)<return>
    function FileEditController(split_window)
      if a:split_window == 1
        call WindowSplitVerdically()
      endif
      let current_file = expand('%')
      if match(current_file, 'app/assets/stylesheets') != -1
        let controller = 1
        let file = substitute(expand('%:h'), 'assets/stylesheets', 'controllers', '') . '_controller.rb'
      elseif match(current_file, 'app/controllers') != -1
        let controller = 1
        let file = current_file
      elseif match(current_file, 'app/helpers') != -1
        let controller = 1
        let file = substitute(expand('%'), 'helpers', 'controllers', '')
        let file = substitute(file, '_helper.rb', '_controller.rb', '')
      elseif match(current_file, 'app/javascript/packs') != -1
        let controller = 1
        let file = substitute(expand('%:h'), 'javascript/packs', 'controllers', '') . '_controller.rb'
      elseif match(current_file, 'app/views') != -1
        let controller = 1
        let file = substitute(expand('%:h'), 'views', 'controllers', '') . '_controller.rb'
      elseif match(current_file, 'spec/controllers') != -1
        let controller = 1
        let file = substitute(expand('%'), 'spec/controllers', 'app/controllers', '')
        let file = substitute(file, 'controller_spec', 'controller', '')
      elseif match(current_file, 'test/controllers') != -1
        let controller = 1
        let file = substitute(expand('%'), 'test/controllers', 'app/controllers', '')
        let file = substitute(file, 'controller_test', 'controller', '')
      elseif match(current_file, 'lib/loaders') != -1
        let controller = 1
        let file = substitute(expand('%'), 'lib/loaders', 'app/controllers', '')
        let file = substitute(file, '_loader.rb', '_controller.rb', '')
      elseif match(current_file, 'lib/services') != -1
        let controller = 1
        let file = substitute(expand('%:h'), 'lib/services', 'app/controllers', '') . '_controller.rb'
      " React Native COMPONENTS
      elseif match(current_file, '.js') == -1
        let controller = 1
        let file = 1
      elseif match(current_file, '.js') != -1
        let controller = 0
        let component_base_name = split(expand('%:h'), '/')[-1]
        let file = expand('%:h') . '/' . component_base_name . '.js'
      endif
      
      if controller == 1
        if file == current_file
          echo 'Already on controller file'
        elseif file == 1
          echo 'Unable to find controller for' current_file
        else
          execute ':e' file
        endif
      else
        if file == current_file
          echo 'Already on component file'
        else
          execute ':e' file
        endif
      endif
    endfunction

    " File Edit HElper
    nnoremap <silent> <space>fehe :call FileEditHelper()<return>
    function FileEditHelper()
      let current_file = expand('%')
      if match(current_file, 'app/assets/stylesheets') != -1
        let file = substitute(expand('%:h'), 'assets/stylesheets', 'helpers', '') . '_helper.rb'
      elseif match(current_file, 'app/controllers') != -1
        let file = substitute(current_file, 'controllers', 'helpers', '')
        let file = substitute(file, '_controller.rb', '_helper.rb', '')
      elseif match(current_file, 'app/helpers') != -1
        let file = current_file
      elseif match(current_file, 'app/javascript/packs') != -1
        let file = substitute(expand('%:h'), 'javascript/packs', 'helpers', '') . '_helper.rb'
      elseif match(current_file, 'app/views') != -1
        let file = substitute(expand('%:h'), 'views', 'helpers', '') . '_helper.rb'
      elseif match(current_file, 'spec') != -1
        let file = substitute(expand('%'), 'spec/controllers', 'app/helpers', '')
        let file = substitute(file, 'controller_spec', 'helper', '')
      elseif match(current_file, 'test') != -1
        let file = substitute(expand('%'), 'test/controllers', 'app/helpers', '')
        let file = substitute(file, 'controller_test', 'helper', '')
      else 
        let file = 1
      endif
      if file == current_file
        echo 'Already on helper file'
      elseif file == 1
        echo 'Unable to find helper for' current_file
      else
        execute ':e' file
      endif
    endfunction
    "
    " File Edit Javascrip Pack
    nnoremap <silent> <space>fejp :call FileEditJavascriptPack()<return>
    function FileEditJavascriptPack()
      let current_file = expand('%')
      if match(current_file, 'app/assets/stylesheets') != -1
        let directory = substitute(expand('%:h'), 'assets/stylesheets', 'javascript/packs', '')
      elseif match(current_file, 'app/controllers') != -1
        let directory = substitute(expand('%'), 'controllers', 'javascript/packs', '')
        let directory = substitute(directory, '_controller.rb', '', '')
      elseif match(current_file, 'app/helpers') != -1
        let directory = substitute(expand('%'), 'helpers', 'javascript/packs', '')
        let directory = substitute(directory, '_helper.rb', '', '')
      elseif match(current_file, 'app/javascript') != -1
        let directory = expand('%:h')
      elseif match(current_file, 'app/views') != -1
        let directory = substitute(expand('%:h'), 'views', 'javascript/packs', '')
      elseif match(current_file, 'spec/controllers') != -1
        let directory = substitute(expand('%'), 'spec/controllers', 'app/javascript/packs', '')
        let directory = substitute(directory, '_controller_spec.rb', '', '')
      elseif match(current_file, 'test/controllers') != -1
        let directory = substitute(expand('%'), 'test/controllers', 'app/javascript/packs', '')
        let directory = substitute(directory, '_controller_test.rb', '', '')
      else 
        let directory = 1
      endif
      if directory == 1
        echo 'Unable to find javascript pack for' current_file
      else
        if isdirectory(directory)
          execute ':Explore' directory
        else
          let new_file = input("There are no javascript pack files yet. Create the first one!: " . directory . "/")
          if new_file == ''
            execute "normal! :echo"
          else
            execute ":e " . directory . "/" . new_file
          endif
        endif
      endif
    endfunction

    " File Edit Children
    nnoremap <silent> <space>fech :call FileEditChild(0)<return>
    nnoremap <silent> <space>fecH :call FileEditChild(1)<return>
    function FileEditChild(split_window)
      let current_file = expand('%')
      let directory_of_children = split(current_file, '\.')[0]
      if isdirectory(directory_of_children)
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        execute ':Explore' directory_of_children
      else
        let new_file = input("There are no child files yet. Create the first one!: " . directory_of_children . "/")
        if new_file == ''
          if a:split_window == 1
            call WindowSplitVerdically()
          endif
          execute "normal! :echo"
        else
          if a:split_window == 1
            call WindowSplitVerdically()
          endif
          execute ":e " . directory_of_children . "/" . new_file
        endif
      endif
    endfunction

    " File Edit Parent
    nnoremap <silent> <space>fepa :call FileEditParent(0)<return>
    nnoremap <silent> <space>fepA :call FileEditParent(1)<return>
    function FileEditParent(split_window)
      let current_file = expand('%')
      let parent = join(split(current_file, '/')[0:-2], '/')
      if filereadable(parent . '.rb')
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        execute ':e' parent . '.rb'
      elseif filereadable(parent . '.js')
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        execute ':e' parent . '.js'
      else
        let grandparent = join(split(parent, '/')[0:-2], '/')
        if a:split_window == 1
          call WindowSplitVerdically()
        endif
        execute ':Explore ' grandparent
      endif
    endfunction
    " File Edit Test Helper
    nnoremap <silent> <space>fedm :Explore db/migrate<return>

    " File Edit Test Helper
    nnoremap <silent> <space>feth :Explore test/test_helper<return>

    " File Edit MOdel
    nnoremap <silent> <space>femo :call FileEditModel()<return>
    function FileEditModel()
      let current_file = expand('%')
      if match(current_file, 'app/models') != -1
        let file = current_file
      elseif match(current_file, 'lib/services') != -1
        let file = substitute(expand('%:h'), 'lib/services', 'app/models', '') . '.rb'
      elseif match(current_file, 'test/models') != -1
        let file = substitute(current_file, 'test/models', 'app/models', '')
        let file = substitute(file, '_test.rb', '.rb', '')
      else 
        let file = 1
      endif
      if file == current_file
        echo 'Already on model file'
      elseif file == 1
        echo 'Unable to find helper for' current_file
      else
        execute ':e' file
      endif
    endfunction

    " File Edit SCript
    nnoremap <silent> <space>fesc :call FileEditScript()<return>
    function FileEditScript()
      let current_file = expand('%')
      " React Native
      if match(current_file, 'scripts.js') != -1
        let directory = 2
        let file = current_file
      elseif match(current_file, '.js') != -1
        let directory = 2
        let file = expand('%:h') . '/scripts.js'
      else 
        let file = 1
      endif
      
      " unable to find file
      if file == 1
        echo 'Unable to find script for' current_file
      elseif file == current_file
        echo 'Already on script file'
      else
        execute ':e' file
      endif
    endfunction

    " File Edit VIew
    nnoremap <silent> <space>fevi :call FileEditView()<return>
    function FileEditView()
      let current_file = expand('%')
      " Rails
      if match(current_file, 'app/assets/stylesheets') != -1
        let directory = substitute(expand('%:h'), 'assets/stylesheets', 'views', '')
      elseif match(current_file, 'app/controllers') != -1
        let directory = substitute(current_file, 'controllers', 'views', '')
        let directory = substitute(directory, '_controller.rb', '', '')
      elseif match(current_file, 'app/helpers') != -1
        let directory = substitute(expand('%'), 'helpers', 'views', '')
        let directory = substitute(directory, '_helper.rb', '', '')
      elseif match(current_file, 'app/javascript/packs') != -1
        let directory = substitute(expand('%:h'), 'javascript/packs', 'views', '')
      " Rails views will not end in .js
      elseif (match(current_file, 'app/views') != -1) && (match(current_file, '.js') == -1)
        let directory = expand('%:h')
      elseif match(current_file, 'spec/controllers') != -1
        let directory = substitute(expand('%'), 'spec/controllers', 'app/views', '')
        let directory = substitute(directory, '_controller_spec.rb', '', '')
      elseif match(current_file, 'test/controllers') != -1
        let directory = substitute(expand('%'), 'test/controllers', 'app/views', '')
        let directory = substitute(directory, '_controller_test.rb', '', '')
      " React Native
      elseif match(current_file, '_view.js') != -1
        let directory = 2
        let file = current_file
      elseif match(current_file, '.js') != -1
        let directory = 2
        let view_base_name = split(expand('%:h'), '/')[-1]
        let file = expand('%:h') . '/' . view_base_name . '.js'
      else 
        let directory = 1
      endif
      
      " unable to find directory
      if directory == 1
        echo 'Unable to find views for' current_file
      " app is react native
      elseif directory == 2
        if file == current_file
          echo 'Already on view file'
        else
          execute ':e' file
        endif
      " app is rails
      else
        if isdirectory(directory)
          execute ':Explore' directory
        else
          let new_file = input("There are no view files yet. Create the first one!: " . directory . "/")
          if new_file == ''
            execute "normal! :echo"
          else
            execute ":e " . directory . "/" . new_file
          endif
        endif
      endif
    endfunction

    " File Edit Service
    nnoremap <silent> <space>fese :call FileEditService()<return>
    function FileEditService()
      let current_file = expand('%')
      if match(current_file, 'lib/services') != -1
        let directory = expand('%:h')
      elseif match(current_file, 'app/controllers') != -1
        let directory = substitute(current_file, 'app/controllers', 'lib/services', '')
        let directory = substitute(directory, '_controller.rb', '', '')
      elseif match(current_file, 'app/models') != -1
        let directory = substitute(current_file, 'app/models', 'lib/services', '')
        let directory = substitute(directory, '.rb', '', '')
      else 
        let directory = 1
      endif
      if directory == 1
        echo 'Unable to find services for' current_file
      else
        if isdirectory(directory)
          execute ':Explore' directory
        else
          let new_file = input("There are no service files yet. Create the first one!: " . directory . "/")
          if new_file == ''
            execute "normal! :echo"
          else
            execute ":e " . directory . "/" . new_file
          endif
        endif
      endif
    endfunction

    " File Edit SPec
    nnoremap <silent> <space>fesp :call FileEditSpec(0)<return>
    nnoremap <silent> <space>fesP :call FileEditSpec(1)<return>
    function FileEditSpec(split_window)
      if a:split_window == 1
        call WindowSplitVerdically()
      endif
      execute ':e' GetSpecFile()
    endfunction

    " File Edit Spec Source
    nnoremap <silent> <space>fess :call FileEditSpecSource()<return>
    function FileEditSpecSource()
      let current_file = expand('%')
      let file = substitute(current_file, '_spec.rb', '.rb', '')
      if match(file, 'channel\|controller\|helper\|job\|mailer\|model') != -1
        let file = substitute(file, 'spec', 'app', '')
      else
        let file = substitute(file, 'spec', 'lib', '')
      endif
      execute ':e' file
    endfunction

    " File Edit TEst
    nnoremap <silent> <space>fete :call FileEditTest(0)<return>
    nnoremap <silent> <space>fetE :call FileEditTest(1)<return>
    function FileEditTest(split_window)
      if a:split_window == 1
        call WindowSplitVerdically()
      endif
      execute ':e' GetTestFile()
    endfunction

    " File Edit Test Source
    nnoremap <silent> <space>fets :call FileEditTestSource()<return>
    function FileEditTestSource()
      let current_file = expand('%')
      let file = substitute(current_file, '_test.rb', '.rb', '')
      if match(file, 'channel\|controller\|helper\|job\|mailer\|model') != -1
        let file = substitute(file, 'test', 'app', '')
      else
        let file = substitute(file, 'test', 'lib', '')
      endif
      execute ':e' file
    endfunction
 
" Everything below here needs to be refactored
  " File Edit LOader
  nnoremap <silent> <space>felo :call FileEditLoader()<return>
  function FileEditLoader()
    let current_file = expand('%')
    if match(current_file, 'lib/loaders') != -1
      let file = current_file
    elseif match(current_file, 'app/controllers') != -1
      let file = substitute(current_file, 'app/controllers', 'lib/loaders', '')
      let file = substitute(file, '_controller.rb', '_loader.rb', '')
    else 
      let file = 1
    endif
    if file == current_file
      echo 'Already on loader'
    elseif file == 1
      echo 'Unable to find loader for' current_file
    else
      execute ':e' file
    endif
  endfunction
  

" File Edit Mailer
  " File Edit Mailer to View
  nnoremap <silent> <space>feMv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/mailers<return>cgnviews<esc>/.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  " File Edit Mailer to Preview
  nnoremap <silent> <space>feMp :let @+ = expand("%")<return>$a<return><esc>pO<esc>/app<return>cgntest<esc>/mailers<return>cgnmailers/previews<esc>/.rb<return>cgn_preview.rb<esc><up>dddd:e <C-R><C-R>+
  
" File Edit Model
  " File Edit Model to Fixture
  nnoremap <silent> <space>femf :let @+ = expand("%:h")<return>$a<return><esc>p0/app<return>cgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/

" File Edit View
  " File Edit View to Javascript pack
  nnoremap <silent> <space>fevJ :let @+ = expand('%')<return>$a<return><esc>p<up><esc>/views<return>cgnjavascript/packs<esc>/html\.erb<return>cgnjs<esc>dd:e <C-R><C-R>+
  " File Edit View to Mailer
  nnoremap <silent> <space>fevM :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/views<return>cgnmailers<esc>A.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to mailer Preview
  nnoremap <silent> <space>fevp :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/mailers/previews<esc>A_preview.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to View
  nmap <silent> <space>fevv <space>fecp
  " File Edit View to (controller) Test
  nnoremap <silent> <space>fevt :let @+ = expand('%:h')<return>$a<return><esc>pO<esc>/app\/views<return>cgntest/controllers<esc>A_controller_test.rb<esc><up>dddd:e <C-R><C-R>+
  " File Edit View to (mailer) tEst
  nnoremap <silent> <space>feve :let @+ = expand('%:h')<return>$a<return><esc>p<up>/app\/views<return>cgntest/mailers<esc>A_test.rb<esc>dd:e <C-R><C-R>+
  
" File Edit Task

" File Edit Service

" File Edit Lib files

" File Edit Test
  " File Edit Test to View (for controller and mailer tests)
  nnoremap <silent> <space>fetv :let @+ = expand("%")<return>$a<return><esc>p<up>/test<return>cgnapp<esc><up>/controllers\\|mailers<return>cgnviews<esc><up>/_controller_test.rb<return>cgn/<esc>dd:e <C-R><C-R>+
  " File Edit Test to mailer Preview
  nnoremap <silent> <space>fetp :let @+ = expand("%")<return>$a<return><esc>p$a<return><esc>/mailers<return>Ncgnmailers/previews<esc>/_test<return>cgn_preview<esc><down>dd<up>dd:e <C-R><C-R>+
  " File Edit (model) Test to fixture
  "nnoremap <silent> <space>fetf :let @+ = expand("%:h")<return>$a<return><esc>p0/test<return>Ncgntest/fixtures<esc>/models\/<return>cgn<esc>dd:e <C-R><C-R>+/

" File Edit Preview
  " File Edit Preview to View
  nnoremap <silent> <space>fepv :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/views<esc>/_preview.rb<return>cgn/<esc><up>dddd:e <C-R><C-R>+
  " File Edit Preview to Mailer
  nnoremap <silent> <space>fepM :let @+ = expand("%")<return>$a<return><esc>pO<esc>/test\/mailers\/previews<return>cgnapp/mailers<esc>/_preview<return>cgn<esc><up>dddd:e <C-R><C-R>+
  " File Edit Preview to Test
  nnoremap <silent> <space>fept :let @+ = expand("%")<return>$a<return><esc>p<up>/\/previews<return>cgn<esc><up>/_preview<return>cgn_test<esc>dd:e <C-R><C-R>+
  
" File Edit Fixtture
  " File Edit Fixture to Model
  nnoremap <silent> <space>fefm :let @+ = expand("%:h")<return>$a<return><esc>p0/test\/fixtures<return>cgnapp/models<esc>dd:e <C-R><C-R>+/
  " File Edit Fixture to (model) Test
  nnoremap <silent> <space>feft :let @+ = expand("%:h")<return>$a<return><esc>p0/fixtures<return>cgnmodels<esc>dd:e <C-R><C-R>+/



"" File edit specific files and paths (NEEDS CLEANING)
"nnoremap <silent> <space>ftaas <space>fT/app<return><return>/assets<return><return><esc>:noh<return>
"nnoremap <silent> <space>faas :edit app/assets/<space><backspace>
"" Edit App Assets Css (stylesheets)
"nnoremap <silent> <space>ftaaS <space>fT/app<return><return>/assets<return><return>/stylesheets<return><return><esc>:noh<return>
"nnoremap <silent> <space>faaS :edit app/assets/stylesheets/<space><backspace>
""
"nnoremap <silent> <space>ftach <space>fT/app<return><return>/channels<return><return><esc>:noh<return>
"nnoremap <silent> <space>fach :edit app/channels/<space><backspace>
""
""nnoremap <silent> <space>ftaco <space>fT/app<return><return>/controllers<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftaco :e app/controllers/
"nnoremap <silent> <space>faco :edit app/controllers/<space><backspace>
""
"nnoremap <silent> <space>ftahe <space>fT/app<return><return>/helpers<return><return><esc>:noh<return>
"nnoremap <silent> <space>fahe :edit app/helpers/<space><backspace>
""
"nnoremap <silent> <space>ftaJa <space>fT/app<return><return>/javascript<return><return><esc>:noh<return>
"nnoremap <silent> <space>faJa :edit app/javascript/<space><backspace>
""
"nnoremap <silent> <space>ftaJp <space>fT/app<return><return>/javascript<return><return>/packs<return><return><esc>:noh<return>
"nnoremap <silent> <space>faJp :edit app/javascript/packs/<space><backspace>
"nnoremap <silent> <space>faJs :edit app/javascript/packs/lib/show_edit_swap.js.erb<return>
""
"nnoremap <silent> <space>ftajo <space>fT/app<return><return>/jobs<return><return><esc>:noh<return>
"nnoremap <silent> <space>fajo :edit app/jobs/<space><backspace>
"" Edit App/MAilers
"nnoremap <silent> <space>ftaMa <space>fT/app<return><return>/mailers<return><return><esc>:noh<return>
"nnoremap <silent> <space>faMa :edit app/mailers/<space><backspace>
"" Edit App/MOddels
"nnoremap <silent> <space>ftamo <space>fT/app<return><return>/models<return><return><esc>:noh<return>
"nnoremap <silent> <space>famo :edit app/models/<space><backspace>
"" Edit App/Mddels/aBility.rb Cancancan
"nnoremap <silent> <space>famc :e app/models/ability.rb<return>
""
"nnoremap <silent> <space>ftavi <space>fT/app<return><return>/views<return><return><esc>:noh<return>
"nnoremap <silent> <space>favi :edit app/views/<space><backspace>
""
"nnoremap <silent> <space>ftcon <space>fT/config<return><return><esc>:noh<return>
"nnoremap <silent> <space>fcon :edit config/<space><backspace>
""
"nnoremap <silent> <space>fcro :edit config/routes.rb<return>
""
"nnoremap <silent> <space>fdsc :edit db/schema.rb<return>
""
"nnoremap <silent> <space>ftdse <space>fT/db<return><return>/seeds<return><return><esc>:noh<return>
"nnoremap <silent> <space>fdse :edit db/seeds.rb<return>
""
"nnoremap <silent> <space>ftdmi <space>fT/db<return><return>/migrate<return><return><esc>:noh<return>
"nnoremap <silent> <space>fdmi :edit db/migrate/<space><backspace>
""
"nnoremap <silent> <space>ftlib <space>fT/lib<return><return><esc>:noh<return>
"nnoremap <silent> <space>flib :edit lib/<space><backspace>
""
"nnoremap <silent> <space>fttes <space>fT/test<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftes :edit test/<space><backspace>
""
"nnoremap <silent> <space>fttco <space>fT/test<return><return>/controllers<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftco :edit test/controllers/<space><backspace>
""
"nnoremap <silent> <space>fttmo <space>fT/test<return><return>/models<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftmo :edit test/models/<space><backspace>
"" File Test FIxtures
"nnoremap <silent> <space>fttfi <space>fT/test<return><return>/fixtures<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftfi :edit test/fixtures/<space><backspace>
"" File Test Mailers
"nnoremap <silent> <space>fttma <space>fT/test<return><return>/mailers<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftma :edit test/fixtures/mailers/<space><backspace>
"" File Test Mailers Previews
"nnoremap <silent> <space>fttmp <space>fT/test<return><return>/mailers<return><return>/previews<return><return><esc>:noh<return>
"nnoremap <silent> <space>ftmp :edit test/fixtures/mailers/previews/<space><backspace>
""
"nnoremap <silent> <space>ftven <space>fT/vendor<return><return><esc>:noh<return>
"nnoremap <silent> <space>fven :edit vendor/<space><backspace>
"" Edit GEMfile
"nnoremap <silent> <space>fgem <space>fT/Gemfile<return><return><esc>:noh<return>
"" Edit REAdme
"nnoremap <silent> <space>frea <space>fT/README.md<return><return><esc>:noh<return>
