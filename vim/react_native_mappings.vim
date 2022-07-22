" react Native View mappings
  " react Native View BAse
  nnoremap <silent> ,nvba :call ReactNativeViewBase()<return>n
  function! ReactNativeViewBase()
    let file =  '_' . split(expand('%:t'), '\.')[0]
    let script_file = substitute(split(expand('%:t'), '\.')[0], 'view', 'script', '')
    let style_file = substitute(split(expand('%:t'), '\.')[0], 'view', 'style', '')
    let file_camel = substitute(file, '_\([a-zA-Z]\)', '\u\1',  'g')
    execute "normal! aimport React from 'react'\<return>// import * as script from '../scripts/" . script_file . "'\<return>import styles from '../styles/" . style_file . "'\<return>\<backspace>\<backspace>\<backspace>import { ChangeComponent } from 'react-native'\<return>\<return>export default function " . file_camel . "() {\<return>return (\<return><ChangeComponent>\<return></ChangeComponent>\<return>)\<return>}"
    let @/ = "ChangeComponent"
  endfunction
  
  
" const styles = StyleSheet.create({\<return>ChangeStyleObject: {\<return>ChangeStyle: ChangeValue,\<return>}\<return>})\<return>
  " react Native View IMage
  nnoremap <silent> ,nvim a<Image<space><backspace><return>loadingIndicatorSource={require('../assets/loading.png')}<return>source={require('../assets/ChangeAsset')}<return>/><esc>/ChangeAsset<return>

" :[range]s[ubstitute]/{pattern}/{string}/[flags] [count]
" substitute({string}, {pat}, {sub}, {flags})		*substitute()*
  
" react Native Files
  " react Native File BAse
  " 
  " 
  " 
  " 
