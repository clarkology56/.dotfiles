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

" Plugins
call plug#begin('~/.vim/plugged')
  Plug 'arcticicestudio/nord-vim' " cool nordic color scheme
  Plug 'neomake/neomake' " run specific programs (ex. rubocop) asynchronously
call plug#end()

" misc settings
  " Enable mouse in normal and visual modes
  set mouse=nv
  " Color Scheme
  colorscheme nord
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
  
" Shared
so ~/.dotfiles/vim/shared_functions.vim
so ~/.dotfiles/vim/globals.vim

" vim mappings
so ~/.dotfiles/vim/vim_mappings.vim
so ~/.dotfiles/vim/terminal_mode_mappings.vim

" this should be cleaned and / or clarified...
so ~/.dotfiles/vim/simple_mappings.vim

" Vim / 'space' mappings
so ~/.dotfiles/vim/git_mappings.vim
so ~/.dotfiles/vim/file_management_mappings.vim
so ~/.dotfiles/vim/buffer_management_mappings.vim
so ~/.dotfiles/vim/window_management_mappings.vim

" Language specific / 'comma' mappings
so ~/.dotfiles/vim/ruby_mappings.vim
so ~/.dotfiles/vim/javascript_mappings.vim
so ~/.dotfiles/vim/html_element_mappings.vim

" Rails / Upserv specific / 'comma' mappings
so ~/.dotfiles/vim/app_controller_mappings.vim
so ~/.dotfiles/vim/javascript_ajax_mappings.vim
so ~/.dotfiles/vim/app_helper_mappings.vim
so ~/.dotfiles/vim/app_job_mappings.vim
so ~/.dotfiles/vim/app_mailer_mappings.vim
so ~/.dotfiles/vim/app_model_mappings.vim
so ~/.dotfiles/vim/view_mappings.vim
so ~/.dotfiles/vim/html_form_related_mappings.vim
so ~/.dotfiles/vim/html_ui_mappings.vim
so ~/.dotfiles/vim/html_ruby_mappings.vim
so ~/.dotfiles/vim/config_mappings.vim
so ~/.dotfiles/vim/db_mappings.vim
so ~/.dotfiles/vim/lib_mappings.vim
so ~/.dotfiles/vim/spec_mappings.vim
so ~/.dotfiles/vim/test_mappings.vim
so ~/.dotfiles/vim/test_controller_mappings.vim
so ~/.dotfiles/vim/test_model_mappings.vim

" Rails specific misc process / 'comma' mappings
so ~/.dotfiles/vim/misc_process_mappings.vim

" truly random one off stuff
  " Caps lock in insert mode (press ctrl - ^ to toggle)
    " Execute 'lnoremap x X' and 'lnoremap X x' for each letter a-z.
     for c in range(char2nr('A'), char2nr('Z'))
      execute 'lnoremap ' . nr2char(c+32) . ' ' . nr2char(c)
      execute 'lnoremap ' . nr2char(c) . ' ' . nr2char(c+32)
    endfor
    " Kill the capslock when leaving insert mode.
    autocmd InsertLeave * set iminsert=0

" Misc. mapping
  " Misc. Reload Source
  nnoremap <silent> ,mrs :so ~/.vimrc<return>:echo "Source reloaded"<return>
  " Misc. DD but combine to previous line instead of delete line  (I<tab>
  " makes sure there is at least something on the line because viwx on empty
  " line deletes entire line and then grabs following line)
  nnoremap <silent> ,mdd I<tab><esc>0viwxi<backspace><esc><right>
  " Misc. Dd but combine to Forward line instead of delete line
  nnoremap <silent> ,mdf $<down>I<tab><esc>0viwxi<backspace><esc><right>
  " Misc. Df but add <return> between each line
  nnoremap <silent> ,mdr $<down>I<tab><esc>0viwxi<backspace><esc><right>i<lt>return><esc>
  " Misc. Dd but with space
  nnoremap <silent> ,mds I<tab><esc>0viwxi<backspace><space><esc><right>
  
  " one off
