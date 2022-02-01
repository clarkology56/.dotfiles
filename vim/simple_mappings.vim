" visual mode non-leader key mappings
  " prevent changing case on accident
  vnoremap <silent> u <esc>u
  vnoremap <silent> U <esc>U
  " allow changing case
  vnoremap <silent> ,u u
  vnoremap <silent> ,U U
  " comment
  vnoremap <silent> # I#<esc>
  vnoremap <silent> " I"<esc>
  vnoremap <silent> / I//<esc>


" insert mode non-leader key mappings
  " prevent return from autocomplete (very annoying because to return you have
  " to hit space then return. Now, tab does autocomplete and return does
  " return
  inoremap <silent> <return> <space><backspace><return>
  " ruby curley brace spacing
  inoremap <silent> {{ {<space><space>}<left><left>
  " ruby curley brace entered
  inoremap <silent> {<return> {<return><space><backspace><return>}<up><tab>
  " bar options
  inoremap <silent> <bar><bar><bar> <bar><bar><left>
  inoremap <silent> <bar><bar><space> <bar><bar><space>
  inoremap <silent> <bar><bar>= <bar><bar>=
  " ruby interpolation
  inoremap <silent> ## #{}<left>
  " erb
  inoremap <silent> <<< <%  %><left><left><left>
  " erb entered
  inoremap <silent> >>> <%=  %><left><left><left>
  " erb comment
  inoremap <silent> <<> <%#  %><left><left><left>
  " J Query Select
  inoremap <silent> $$ $()<left>

" single key non-comma
  " select word in visual mode (spacevim does this but I want to get rid of
  " spacevim
  vnoremap v iw
  " select entire page
  vnoremap aa <esc>ggVG
  " copy entire page
  vnoremap ay <esc>ggVGy
  " paste over entire page
  vnoremap ap <esc>ggVGp
  " delete entire page
  vnoremap ax <esc>ggVGx
  " copy word
  nnoremap <silent> y viwy
  " copy and search
  nnoremap <silent> Y evby0/<C-R><C-R>+<return>
  vnoremap <silent> Y y0/<C-R><C-R>+<return>
  " cut word or highlighted
  nnoremap <silent> cx viwx<left>
  " replace word or highlighed
  nnoremap <silent> cc viwc
  " make p in visual keep original clipboard
  vnoremap <silent> p :<backspace><backspace><backspace><backspace><backspace>let previous_clipboard = @+<return>gvp:let @+ = previous_clipboard<return>
  " paste word and keep orignal 
  nnoremap <silent> - viwpviwy
  " paste word and copy word just replaced
  nnoremap <silent> = viwp
  " redo
  nnoremap <S-u> <C-r>
  " o and O but remain in normal mode
  nnoremap <silent> b o <backspace><esc>
  nnoremap <silent> B O <backspace><esc>
  " create empty line and then another line but in normal mode
  nnoremap <silent> gb o<esc>o<space><backspace><esc>
  nnoremap <silent> gB O<esc>O<space><backspace><esc>
  " previously o and O were re-mapped and then several recursive mappigns
  " used this new mapping. But that became almost impossible to track
  " (because /o<return> is not helpful) so ,,o and ,,O were used
  " instead because they are easier to find. They replicate 
  " the original functionaligy of the remapped o and O and are easioer to
  " search. However, each instance of ,,o and ,,O in any mapping file should probably
  " be replaced with $a<return><space><backspace><esc>
  " original remapping of o and O (jsut for reference): 
  "nnoremap <silent> o o <backspace><esc>
  "nnoremap <silent> O O <backspace><esc>
  nnoremap <silent> ,,o o <backspace><esc>
  nnoremap <silent> ,,O O <backspace><esc>
  " remap r to s (r is used by new dpad)
  nnoremap <silent> s r
  vnoremap <silent> s r
  
  " remap v-esc feature to f which is easier than v
  nnoremap <silent> f V
  vnoremap <silent> f y

  " paste line over current line
  nnoremap <silent> F VpVy

" retrain d-pad
  " up
  nnoremap <silent> l k
  vnoremap <silent> l k
  nnoremap <silent> dl dk
  " down
  nnoremap <silent> k j
  vnoremap <silent> k j
  nnoremap <silent> dk dj
  " left
  nnoremap <silent> j <left>
  vnoremap <silent> j <left>
  " right
  nnoremap <silent> ; <right>
  vnoremap <silent> ; <right>
  " far left
  nnoremap <silent> q ^
  vnoremap <silent> q ^
  nnoremap <silent> Q I
  " back to beginning of word
  nnoremap <silent> w b
  vnoremap <silent> w b
  " forward to begiining of word
  nnoremap <silent> t w
  vnoremap <silent> t w
  " forward to end of word (no mapping needed because it's already e)
  "nnoremap <silent> e e
  "vnoremap <silent> e e
  " far right (when in visual mode, use <left> to make sure to not get next line)
  nnoremap <silent> r $
  vnoremap <silent> r $<left>
  nnoremap <silent> R A
  " to top of page (keep same gg)
  "
  " to bottom of page (make hh go to bottom like G)
  nnoremap <silent> hh G
  vnoremap <silent> hh G
  " go up and down fast
  nnoremap <silent> <S-l> 3<up>
  vnoremap <silent> <S-l> 3<up>
  nnoremap <silent> <S-up> 3<up>
  vnoremap <silent> <S-up> 3<up>

  nnoremap <silent> <S-k> 3<down>
  vnoremap <silent> <S-k> 3<down>
  nnoremap <silent> <S-down> 3<down>
  vnoremap <silent> <S-down> 3<down>
    
" single key comma mappings
  " visual mode
  nnoremap ,v <C-v>
  " various comments
  nnoremap <silent> ,< O<!--<esc>o--><esc>Vx0
  
  nnoremap <silent> ,,< /<!--<return>Nddmq/--><return>dd`q
  " replace single quite with double quote and vice versa
  nnoremap <silent> ,' /"<return>cgn'<esc>N.:noh<return>
  nnoremap <silent> ," /'<return>cgn"<esc>N.:noh<return>
