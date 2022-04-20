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
