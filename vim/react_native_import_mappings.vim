" react Native Import mappings
  " react Native Import React Native
  nnoremap <silent> ,nirn import { ChangeObjects } from 'react-native'<esc>/ChangeObjects<return>
  " react Native Import REact
  nnoremap <silent> ,nire import { ChangeObjects } from 'react'>/ChangeObjects<return>
"  " react Native Import Base
"  nnoremap <silent> ,niba aimport ChangeImport from '../../ChangeCategory/ChangeObject'<esc>/ChangeImport\\|ChangeCategory\\|ChangeObject<return>
"  " react Native Import Component
"  nnoremap <silent> ,nico aimport ChangeImport from '../../components/ChangeObject'<esc>/ChangeImport\\|ChangeObject<return>
"  " react Native Import View
"  nnoremap <silent> ,nivi aimport ChangeImport from '../../views/ChangeObject'<esc>/ChangeImport\\|ChangeObject<return>
"  " react Native Import INdex
"  nnoremap <silent> ,niin :call ReactNativeImportIndex()<return>
"  function! ReactNativeImportIndex()
"    let file = split(expand('%:h'), '/')[-1]
"    let camel_prep =  '_' . file
"    let file_camel = substitute(camel_prep, '_\([a-zA-Z]\)', '\u\1',  'g')
"    execute "normal! aimport " . file_camel . " from './" . file . "'\<return>\<return>export default " . file_camel
"  endfunction
"  " react Native Import Icons
"    nnoremap <silent> ,niic a// DeleteThis - search icons here https://icons.expo.fyi/<return><backspace><backspace><backspace>import { ChangeDesigner } from '@expo/vector-icons'<esc>/DeleteThis\\|ChangeDesigner<return>
"  " react Native Import Config Colors
"    nnoremap <silent> ,nicc aimport colors from '../../config/colors'<esc>
"  " react Native Import Config Styles
"    nnoremap <silent> ,nids aimport defaultStyles from '../../config/default_styles'<esc>
"  " react Native Import SCripts 
"    nnoremap <silent> ,nisc aimport * as scripts from './scripts'<esc>
"  " react Native Import Styles 
"    nnoremap <silent> ,nist aimport styles from './styles'<esc>
