" react Native View mappings
  " react Native View BAse
  nnoremap <silent> ,nvba :call ReactNativeViewBase('base')<return>n
  " react Native View Base with Absolute
  nnoremap <silent> ,nvbA :call ReactNativeViewBase('absolute')<return>n
  " react Native View Base Blank
  nnoremap <silent> ,nvbb :call ReactNativeViewBase('blank')<return>n
  " base view function...
  function! ReactNativeViewBase(type)
    let camel_prep =  '_' . split(expand('%:t'), '\.')[0]
    let file_camel = substitute(camel_prep, '_\([a-zA-Z]\)', '\u\1',  'g')
    if a:type == 'base'
      execute "normal! aimport React from 'react'\<return>import { SafeAreaView } from 'react-native'\<return>\<return>// import * as script from './scripts'\<return>\<backspace>\<backspace>\<backspace>import styles from './styles'\<return>\<return>export default function " . file_camel . "() {\<return>return (\<return><SafeAreaView style={styles.body}>\<return></SafeAreaView>\<return>)\<return>}"
      let @/ = ''
    elseif a:type == 'absolute'
      execute "normal! aimport React from 'react'\<return>import { SafeAreaView, View } from 'react-native'\<return>\<return>// import * as script from './scripts'\<return>\<backspace>\<backspace>\<backspace>import styles from './styles'\<return>\<return>export default function " . file_camel . "() {\<return>return (\<return><SafeAreaView style={styles.body}>\<return><View style={styles.absoluteContainer}>\<return></View>\<return></SafeAreaView>\<return>)\<return>}"
      let @/ = ''
    elseif a:type == 'blank'
      execute "normal! aimport React from 'react'\<return>import { ChangeComponent } from 'react-native'\<return>\<return>// import * as script from './scripts'\<return>import styles from './styles'\<return>\<backspace>\<backspace>\<backspace>\<return>export default function " . file_camel . "() {\<return>return (\<return><ChangeComponent>\<return></ChangeComponent>\<return>)\<return>}"
      let @/ = "ChangeComponent"
    endif
  endfunction
