"augroup CustomVimEntry
"  autocmd!
"  autocmd VimEnter * :only
"  autocmd VimEnter * :vsp
"  autocmd VimEnter * :ter
"  autocmd VimEnter * :close
"  " even though this is sourced in vimrc, it needs to be called again form
"  " some of the simple mappings to work...???
"  autocmd VimEnter * :so ~/.dotfiles/vim/manifest.vim
"augroup END

" mappings that help with vim
so ~/.dotfiles/vim/vim_mappings.vim

" this should be cleaned and / or clarified...
so ~/.dotfiles/vim/simple_mappings.vim

" Shared
so ~/.dotfiles/vim/shared_functions.vim

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
  nnoremap <silent> ,mrs :so ~/.dotfiles/vim/manifest.vim<return>:echo "Source reloaded"<return>
  " Misc. DD but combine to previous line instead of delete line  (I<tab>
  " makes sure there is at least something on the line because viwx on empty
  " line deletes entire line and then grabs following line)
  nnoremap <silent> ,mdd I<tab><esc>0viwxi<backspace><esc><right>
  " Misc. Dd but combine to Forward line instead of delete line
  nmap <silent> ,mdf $<down>,mdd
  " Misc. Df but add <return> between each line
  nmap <silent> ,mdr $<down>,mddi<lt>return><esc>
  " one off
   nmap <silent> ,mn dd<space>fecl
   nmap <silent> ,mm /left-sidebar<return>cgnpage_content_left_menu<esc>/course_left_sidebar<return>cgncourses_left_menu<esc><space>fs
  "app/views/layouts/training/_assignment_left_menu.html.erb
