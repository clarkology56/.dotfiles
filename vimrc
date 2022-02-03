" Plugins ---------------------- {{{
  call plug#begin('~/.local/share/nvim/plugged')
    Plug 'mhinz/vim-startify'
    Plug 'tpope/vim-fugitive'
    Plug 'tpope/vim-rails'
    Plug 'tpope/vim-endwise'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-dispatch'
    Plug 'airblade/vim-gitgutter'
    Plug 'mileszs/ack.vim'
    Plug 'jiangmiao/auto-pairs'
    Plug 'nathanaelkane/vim-indent-guides'
    Plug 'janko-m/vim-test'
    Plug 'iCyMind/NeoSolarized'
    Plug 'itchyny/lightline.vim'
    Plug 'roxma/python-support.nvim'
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'ludovicchabant/vim-gutentags'
    Plug 'ngmy/vim-rubocop'
    Plug 'sheerun/vim-polyglot'
    Plug 'arcticicestudio/nord-vim'
    Plug 'prabirshrestha/async.vim'
    Plug 'prabirshrestha/vim-lsp'
    Plug 'ncm2/ncm2'
    Plug 'roxma/nvim-yarp'
    Plug 'ncm2/ncm2-vim-lsp'
  call plug#end()
" }}}

" Basic settings ---------------------- {{{
  " Auto-update files
  set autoread
  au CursorHold * checktime
  " Solarized colorscheme config
  set termguicolors
  set background=dark
  colorscheme nord
  let g:gitgutter_override_sign_column_highlight = 0

  let g:nord_italic = 1
  let g:nord_underline = 1
  let g:nord_italic_comments = 1
  let g:nord_cursor_line_number_background = 1

  " Indentguides config
  augroup indentation_config
    let g:indent_guides_auto_colors = 1
    let g:indent_guides_enable_on_vim_startup = 1
    let g:indent_guides_guide_size = 1
    let g:indent_guides_exclude_filetypes = ['help', 'startify', 'terminal']
    let g:indent_guides_start_level = 2
    let g:indent_guides_color_change_percent = 5

    autocmd!
    autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=0
    autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=0
  augroup END

  if has('vim_starting') && !has('nvim') && &compatible
    set nocompatible                 " Be iMproved
  endif

  filetype plugin on                 " Enable filetype-specific plugins
  syntax enable                      " Turn on syntax highlighting allowing local overrides
  set path+=**                       " Fuzzy finder
  set wildmenu                       " Command-line completion
  set ttyfast                        " Speeds things up a little bit

  " Whitespace
  set nowrap                        " don't wrap lines
  set tabstop=2                     " a tab is two spaces
  set shiftwidth=2                  " an autoindent (with <<) is two spaces
  set expandtab                     " use spaces, not tabs
  set list                          " Show invisible characters
  set backspace=indent,eol,start    " backspace through everything in insert mode

  " List chars
  set listchars=""                  " Reset the listchars
  set listchars=tab:\ \             " a tab should display as "  ", trailing whitespace as "."
  set listchars+=trail:.            " show trailing spaces as dots
  set listchars+=extends:>          " The character to show in the last column when wrap is
                                    " off and the line continues beyond the right of the screen
  set listchars+=precedes:<         " The character to show in the last column when wrap is
                                    " off and the line continues beyond the left of the screen

  " Remember last location in file, but not for commit messages.
  " see :help last-position-jump
  au BufReadPost * if &filetype !~ '^git\c' && line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g`\"" | endif

  " Puts new splits below to the right
  set splitbelow
  set splitright

  " Set hybrid relative line numbers
  set number relativenumber

  " Uses new Regex engine for faster syntax highlighting
  let &re = 2

  " Faster scrolling
  set lazyredraw

  " Sets the cursorline
  set cursorline

  " Integrate AG (Silver Searcher) with ack.vim
  let g:ackprg = 'ag --nogroup --nocolor --column'

  " Fixes the copy to system's clipboard
  set clipboard+=unnamedplus

  augroup neovim_terminal
    autocmd!

    " Enter Terminal-mode (insert) automatically
    autocmd TermOpen * startinsert

    " Disables number lines on terminal buffers
    autocmd TermOpen * :set nonumber norelativenumber
  augroup END

  " This new Sudow command is for writting changes as root
  command! Sudow :execute ':silent w !sudo tee % > /dev/null' | :edit!

  let test#strategy = 'dispatch'

  " Edit files within Nvim's terminal without nesting sessions.
  augroup prevent_nested_edit
    autocmd VimEnter * if !empty($NVIM_LISTEN_ADDRESS) && $NVIM_LISTEN_ADDRESS !=# v:servername
            \ |let g:r=jobstart(['nc', '-U', $NVIM_LISTEN_ADDRESS],{'rpc':v:true})
            \ |let g:f=fnameescape(expand('%:p'))
            \ |noau bwipe
            \ |call rpcrequest(g:r, "nvim_command", "edit ".g:f)
            \ |call rpcrequest(g:r, "nvim_command", "call lib#SetNumberDisplay(1)")
            \ |qa
            \ |endif
  augroup END

  function! VagrantTransform(cmd) abort
    let vagrant_project = get(matchlist(s:cat('Vagrantfile'), '\vconfig\.vm.synced_folder ["''].+[''"], ["''](.+)[''"]'), 1)
    return 'vagrant ssh --command '.shellescape('cd '.vagrant_project.'; '.a:cmd)
  endfunction

  " let g:test#custom_transformations = {'vagrant': function('VagrantTransform')}
  " let g:test#transformation = 'vagrant'

  " NERDTree config
  augroup nerdtree_config
    autocmd!

    let NERDTreeMinimalUI=1
    let NERDTreeAutoDeleteBuffer=1
    let NERDTreeQuitOnOpen=1
    let NERDTreeAutoCenter=0
    let NERDTreeShowLineNumbers=1
  augroup END

  " Startify config
  let g:startify_change_to_dir = 0

  function! s:List_commits()
    let git = 'git -C ./'
    let commits = systemlist(git .' log --oneline | head -n10')
    let git = 'G'. git[1:]
    return map(commits, '{"line": matchstr(v:val, "\\s\\zs.*"), "cmd": "'. git .' show ". matchstr(v:val, "^\\x\\+") }')
  endfunction

  let g:startify_lists = [
    \ { 'header': ['   Current directory: '. getcwd()], 'type': 'dir' },
    \ { 'header': ['   Sessions'],       'type': 'sessions' },
    \ ]

    " let current_branch = FugitiveHead()
    " \ { 'header': ['   Commits in current branch '. current_branch],        'type': function('s:List_commits') },

  let g:startify_skiplist = [
    \ '.git/*',
    \ 'COMMIT_EDITMSG',
    \ escape(fnamemodify(resolve($VIMRUNTIME), ':p'), '\') .'doc',
    \ 'bundle/.*/doc',
    \ ]

  " Sets the ruby_path manually for speeding things up
  let g:ruby_path="~/.rbenv/shims/ruby"
" }}}

" Mappings ---------------------- {{{
  " Maps leader to ,
  let mapleader = ","

  " Maps keys <ctrl>u to toggle the current word's case while in normal mode
  nnoremap <leader>u viw~e

  " Opens a vertical split with the vim rc file
  nnoremap <leader>ev :vsplit ~/.vimrc<cr>

  " Re-sources the vim rc file
  nnoremap <leader>sv :source $MYVIMRC<cr>

  " Encloses the current word in double quotes
  nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>lel

  " Encloses the current word in single quotes
  nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>lel

  " Encloses the current word in parenthesis
  nnoremap <leader>( viw<esc>a)<esc>hbi(<esc>lel

  " Encloses the current word in curly brackets
  nnoremap <leader>{ viw<esc>a}<esc>hbi{<esc>lel

  " Encloses the current word in square brackets
  nnoremap <leader>[ viw<esc>a]<esc>hbi[<esc>lel

  " Operator-pending mapping that will act over the insides of the next parentesis
  " e.g. c+p will change the insides of the parenthesis
  onoremap p :<c-u>normal! f(vi(<cr>

  " Operator-pending mapping that will act over the insides of the previous parentesis
  " e.g. c+P will change the insides of the previous parenthesis
  onoremap P :<c-u>normal! F)vi(<cr>

  " Maps ESC to exit terminal's insert mode
  if has('nvim')
    tnoremap <Esc> <C-\><C-n>
  endif

  " bind leader+F to Ack + AG word under cursor
  nnoremap <leader>F :Ack! --word-regexp "<C-R><C-W>"<CR>:cw<CR>

  " Sets mappings for moving between splits
  nnoremap <C-h> <c-w>h
  nnoremap <C-j> <c-w>j
  nnoremap <C-k> <c-w>k
  nnoremap <C-l> <c-w>l

  inoremap <C-h> <Esc><c-w>h
  inoremap <C-j> <Esc><c-w>j
  inoremap <C-k> <Esc><c-w>k
  inoremap <C-l> <Esc><c-w>l

  vnoremap <C-h> <Esc><c-w>h
  vnoremap <C-j> <Esc><c-w>j
  vnoremap <C-k> <Esc><c-w>k
  vnoremap <C-l> <Esc><c-w>l

  tnoremap <C-h> <c-\><c-n><c-w>h
  tnoremap <C-j> <c-\><c-n><c-w>j
  tnoremap <C-k> <c-\><c-n><c-w>k
  tnoremap <C-l> <c-\><c-n><c-w>l

  " Sets mappings for moving between tabs
  nnoremap <C-b>h :tabp<CR>
  nnoremap <C-b>l :tabn<CR>

  inoremap <C-b>h <Esc>:tabp<CR>
  inoremap <C-b>l <Esc>:tabn<CR>

  vnoremap <C-b>h <Esc>:tabp<CR>
  vnoremap <C-b>l <Esc>:tabn<CR>

  tnoremap <C-b>h <c-\><c-n>:tabp<CR>
  tnoremap <C-b>l <c-\><c-n>:tabn<CR>

  " Maps ctrl-b + c to open a new tab window
  nnoremap <C-b>c :tabnew +terminal<CR>
  tnoremap <C-b>c <C-\><C-n>:tabnew +terminal<CR>

  " Maps ctrl-b + " to open a new horizontal split with a terminal
  nnoremap <C-b>" :new +terminal<CR>
  tnoremap <C-b>" <C-\><C-n>:new +terminal<CR>

  " Maps ctrl-b + % to open a new vertical split with a terminal
  nnoremap <C-b>% :vnew +terminal<CR>
  tnoremap <C-b>% <C-\><C-n>:vnew +terminal<cr>

  " Setup for the vim-test plugin
  nnoremap <silent> <leader>N :TestNearest<CR>
  nnoremap <silent> <leader>T :TestFile<CR>
  nnoremap <silent> <leader>a :TestSuite<CR>

  " NERDTreeToggle mapping
  noremap <leader>n :NERDTreeToggle<CR>
  tnoremap <leader>n <C-\><C-n>:NERDTreeToggle<CR>

  " Usefull Git mappings mapping
  noremap <leader>S :Git diff --staged<CR>
  noremap <leader>gs :Gstatus<CR>
" }}}

" FileType settings ---------------------- {{{
  augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
  augroup END

  " Set syntax highlighting for specific file types
  augroup filetypes
    autocmd!

    autocmd BufRead,BufNewFile *.conf setfiletype conf
    autocmd BufRead,BufNewFile Appraisals setfiletype ruby
    autocmd BufRead,BufNewFile *.prawn setfiletype ruby
    autocmd BufRead,BufNewFile *.md setfiletype markdown
  augroup END
" }}}

" Status line ---------------------- {{{
  " Lightline config
  let g:lightline = {
        \ 'colorscheme': 'nord',
        \ 'active': {
        \   'left': [ [ 'mode', 'paste' ],
        \             [ 'gitbranch', 'readonly', 'relativepath', 'modified' ] ]
        \ },
        \ 'component_function': {
        \   'gitbranch': 'fugitive#head'
        \ },
        \ }
" }}}

" Autocompletion and LSP --------------{{{
" Solargraph
  if executable('solargraph')
    " gem install solargraph
    au User lsp_setup call lsp#register_server({
        \ 'name': 'solargraph',
        \ 'cmd': {server_info->[&shell, &shellcmdflag, 'solargraph stdio']},
        \ 'initialization_options': {"diagnostics": "true"},
        \ 'whitelist': ['ruby'],
        \ })
  endif

  " enable ncm2 for all buffers
  autocmd BufEnter * call ncm2#enable_for_buffer()

  " IMPORTANT: :help Ncm2PopupOpen for more information
  set completeopt=noinsert,menuone,noselect

  " suppress the annoying 'match x of y', 'The only match' and 'Pattern not
	" found' messages
	set shortmess+=c

	" CTRL-C doesn't trigger the InsertLeave autocmd . map to <ESC> instead.
	inoremap <c-c> <ESC>

	" Use <TAB> to select the popup menu:
	inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
	inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"<Paste>
" }}}
