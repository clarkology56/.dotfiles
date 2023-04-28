" File Edit CLipboard
nnoremap <silent> <space>fecl :call WindowSplitVerdically()<return>:call FileEditClipBoad()<return>
nnoremap <silent> <space>fecL :call FileEditClipBoad()<return>
" File Edit ASets
nnoremap <silent> <space>feas :call WindowSplitVerdically()<return>:Explore .git/../app/assets<return>
nnoremap <silent> <space>feaS :Explore .git/../app/assets<return>
" File Edit FIxtures
nnoremap <silent> <space>fefi :call WindowSplitVerdically()<return>:Explore .git/../test/fixtures<return>
nnoremap <silent> <space>fefI :Explore .git/../test/fixtures<return>
" File Edit FActory
nnoremap <silent> <space>fefa :call FileEditFactories(1)<return>
nnoremap <silent> <space>fefA :call FileEditFactories(0)<return>
" File Edit Db Schema
nnoremap <silent> <space>feds :call WindowSplitVerdically()<return>:e db/schema.rb<return>
nnoremap <silent> <space>fedS :e db/schema.rb<return>
" File Edit ROutes
nnoremap <silent> <space>fero :call WindowSplitVerdically()<return>:e config/routes.rb<return>
nnoremap <silent> <space>ferO :e config/routes.rb<return>
" File Edit ABility
nnoremap <silent> <space>feab :call WindowSplitVerdically()<return>:e app/models/ability.rb<return>
nnoremap <silent> <space>feaB :e app/models/ability.rb<return>
" File Edit GEmfile
nnoremap <silent> <space>fege :call WindowSplitVerdically()<return>:e Gemfile<return>
nnoremap <silent> <space>fegE :e Gemfile<return>
" File Edit REadme
nnoremap <silent> <space>fere :call WindowSplitVerdically()<return>:e README.md<return>
nnoremap <silent> <space>ferE :e README.md<return>
" File Edit Swap Files (for deleting swap files
nnoremap <silent> <space>fesw :call WindowSplitVerdically()<return>:Explore ~/.local/share/nvim/swap/<return>
nnoremap <silent> <space>fesW :Explore ~/.local/share/nvim/swap/<return>
" File Edit STyles
nnoremap <silent> <space>fest :call FileEditeStyle()<return>
nnoremap <silent> <space>fest :call FileEditeStyle()<return>
" File Edit Children Controllers
nnoremap <silent> <space>fecc :call FileEditChildController(1)<return>
nnoremap <silent> <space>fecC :call FileEditChildController(0)<return>
" File Edit Parent Controllers
nnoremap <silent> <space>fepc :call FileEditParentController(1)<return>
nnoremap <silent> <space>fepC :call FileEditParentController(0)<return>
" File Edit COntroller
nnoremap <silent> <space>feco :call FileEditController(1)<return>
nnoremap <silent> <space>fecO :call FileEditController(0)<return>
" File Edit HElper
nnoremap <silent> <space>fehe :call FileEditHelper()<return>
nnoremap <silent> <space>fehe :call FileEditHelper()<return>
" File Edit Children
nnoremap <silent> <space>fech :call FileEditChild(1)<return>
nnoremap <silent> <space>fecH :call FileEditChild(0)<return>
" File Edit Parent
nnoremap <silent> <space>fepa :call FileEditParent(1)<return>
nnoremap <silent> <space>fepA :call FileEditParent(0)<return>
" File Edit Test Helper
nnoremap <silent> <space>fedm :Explore db/migrate<return>
nnoremap <silent> <space>fedm :Explore db/migrate<return>
" File Edit Test Helper
nnoremap <silent> <space>feth :Explore test/test_helper<return>
nnoremap <silent> <space>feth :Explore test/test_helper<return>
" File Edit MOdel
nnoremap <silent> <space>femo :call FileEditModel()<return>
nnoremap <silent> <space>femo :call FileEditModel()<return>
" File Edit VIew
nnoremap <silent> <space>fevi :call FileEditView()<return>
nnoremap <silent> <space>fevi :call FileEditView()<return>
" File Edit SPec
nnoremap <silent> <space>fesp :call FileEditSpec(1)<return>
nnoremap <silent> <space>fesP :call FileEditSpec(0)<return>
" File Edit Spec Source
nnoremap <silent> <space>fess :call FileEditSpecSource()<return>
nnoremap <silent> <space>fess :call FileEditSpecSource()<return>
" File Edit TEst
nnoremap <silent> <space>fete :call FileEditTest(1)<return>
nnoremap <silent> <space>fetE :call FileEditTest(0)<return>
" File Edit Test Source
nnoremap <silent> <space>fets :call FileEditTestSource()<return>
nnoremap <silent> <space>fets :call FileEditTestSource()<return>