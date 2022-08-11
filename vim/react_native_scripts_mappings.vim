" react Native Scripts mappings
  " react Native Scripts Export Function
  nnoremap <silent> ,nsef aexport function ChangeFunction(ChangeArgs) {<return>ChangeLogic<return>}<esc>/ChangeFunction\\|ChangeArgs\\|ChangeLogic<return>
  " react Native Scripts Export Constant
  nnoremap <silent> ,nsec aexport const ChangeConst = ChangeValue)<esc>/ChangeConst\\|ChangeValue<return>
  " react Native Scripts Export Let
  nnoremap <silent> ,nsec aexport let ChangeLet = ChangeValue)<esc>/ChangeLet\\|ChangeValue<return>
