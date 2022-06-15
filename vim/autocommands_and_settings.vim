" Install vim-plug (a minimilist plugin manager) if not found
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
endif

" Run commands on VimEnter
augroup CustomVimEntry
  " Prevent autocommands from appearing twice if / when vimrc is sourced twice
  autocmd!
  " Run PlugInstall if there are missing plugins
  autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
    \| PlugInstall --sync | source $MYVIMRC
  \| endif
  " Open explorer
  autocmd VimEnter * execute "normal! :Explore\<return>"
augroup END


" Caps lock in insert mode (press ctrl - ^ to toggle)
" Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
for c in range(char2nr('A'), char2nr('Z'))
  execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
  execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
endfor
" Kill the capslock when leaving insert mode.
autocmd InsertLeave * set iminsert=0

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'arcticicestudio/nord-vim' " cool nordic color scheme
  Plug 'neomake/neomake' " run specific programs (ex. rubocop) asynchronously
  Plug 'maxboisvert/vim-simple-complete' " autocomplete - a little buggy but mostly amazing and simple to install
  Plug 'jiangmiao/auto-pairs' " helps with {}, (), [], etc.
  Plug 'pangloss/vim-javascript' " adds colors to js files (only difference I saw was color to funtion names). Probably does other stuff too...
  Plug 'maxmellon/vim-jsx-pretty' " more colors and syntax stuff for react / react native 
  Plug 'dense-analysis/ale' " Linter for js and others but can't remember which / need to set up
  " Plug 'vim-ruby/vim-ruby' " Syntax highlighting for ruby - looks like a
  " good plugin but I didn't see any differences from what I already have so I
  " removed it... but want to keep here as a referene because I'd like to come
  " back to it some day...

  let g:ale_linters = { 'javascript': ['eslint'] }
  let g:ale_fixers = { 'javascript': ['prettier', 'eslint'], 'scss': ['prettier'], 'html': ['prettier'] }
  let g:ale_fix_on_save = 1

" misc settings
  " Enable mouse in normal and visual modes
  set mouse=nv
  " Color Scheme
  colorscheme nord
  " Use ruby syntax for jbuilder
  au BufNewFile,BufRead *.json.jbuilder set ft=ruby
  " run neomake at save (which calls rubocop because neomake supports rubocop)
  call neomake#configure#automake('w')
  " make clipboard same as yank so (so you can yank and then cmd v)
  set clipboard=unnamed
  " set line numbers
	set number
  " make tab 2 spaces
  set expandtab " makes tab actually spaces istead of tab
	set tabstop=2 " makes tab 2 spaces
  set softtabstop=2 " tbh idk what this does
	set shiftwidth=0 " makes shift width same as tabstop
  " remove timeout for mappings so you are not in a rush
  set notimeout
