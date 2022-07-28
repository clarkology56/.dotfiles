" react Native Import mappings
  " react Native Import BAse
  nnoremap <silent> ,niba aimport ChangeImport from '../../ChangeCategory/ChangeObject'<esc>/ChangeImport\\|ChangeCategory\\|ChangeObject<return>
  " react Native Import INdex
  nnoremap <silent> ,niin :call ReactNativeImportIndex()<return>
  function! ReactNativeImportIndex()
    let file = split(expand('%:h'), '/')[-1]
    let camel_prep =  '_' . file
    let file_camel = substitute(camel_prep, '_\([a-zA-Z]\)', '\u\1',  'g')
    execute "normal! aimport " . file_camel . " from './" . file . "'\<return>\<return>export default " . file_camel
  endfunction
  " react Native Import Icons
    nnoremap <silent> ,niic a// DeleteThis - search icons here https://icons.expo.fyi/<return><backspace><backspace><backspace>import { ChangeDesigner } from '@expo/vector-icons'<esc>/DeleteThis\\|ChangeDesigner<return>
  " react Native Import Colors
    nnoremap <silent> ,nico aimport colors from '../../config/colors'<esc>

" react Native View mappings
  " react Native View BAse
  nnoremap <silent> ,nvba :call ReactNativeViewBase(1)<return>n
  function! ReactNativeViewBase(include_safe_area)
    let camel_prep =  '_' . split(expand('%:t'), '\.')[0]
    let file_camel = substitute(camel_prep, '_\([a-zA-Z]\)', '\u\1',  'g')
    if a:include_safe_area == 1
      execute "normal! aimport React from 'react'\<return>import { SafeAreaView, View } from 'react-native'\<return>\<return>// import * as script from './scripts'\<return>\<backspace>\<backspace>\<backspace>import styles from './styles'\<return>\<return>export default function " . file_camel . "() {\<return>return (\<return><SafeAreaView style={styles.body}>\<return><View style={styles.absoluteContainer}>\<return></View>\<return></SafeAreaView>\<return>)\<return>}"
      let @/ = ''
    else
      execute "normal! aimport React from 'react'\<return>import { ChangeComponent } from 'react-native'\<return>\<return>// import * as script from '../../scripts/" . script_file . "'\<return>import styles from '../../styles/" . style_file . "'\<return>\<backspace>\<backspace>\<backspace>\<return>export default function " . file_camel . "() {\<return>return (\<return><ChangeComponent>\<return></ChangeComponent>\<return>)\<return>}"
      let @/ = "ChangeComponent"
    endif
  endfunction
  " react Native View IMage
  nnoremap <silent> ,nvim a<Image<space><backspace><return>resizeMode="contain"<return>loadingIndicatorSource={require('../../assets/loading.png')}<esc>osource={require('../../assets/ChangeAsset')}<esc>osource={{<return>width: ChangeWidth,<return>height: ChangeHeight,<return>uri: 'ChangeUrl'<return>}}<return>/><esc>/ChangeAsset\\|ChangeWidth\\|ChangeHeight\\|ChangeUrl<return>
  " react Native View Icon
    nnoremap <silent> ,nvic a<ChangeDesigner<esc>oname="ChangeName"<return>size={ChangeSize}<esc>ocolor={colors.ChangeColor}<esc>o/><esc>/ChangeDesigner\\|ChangeName\\|ChangeSize\\|ChangeColor<return>
  
" react Native Style mappings
  " react Native Base for View
  nnoremap <silent> ,nsbv :call ReactNativeStyleBase(1)<return>n
  " react Native Base for Component
  nnoremap <silent> ,nsbc :call ReactNativeStyleBase(0)<return>n
  function! ReactNativeStyleBase(include_body)
    if a:include_body == 1
      execute "normal! aimport { Platform, StatusBar, StyleSheet } from 'react-native'\<return>\<return>import colors from '../../config/colors'\<return>\<return>export default StyleSheet.create({\<return>absoluteContainer: {\<return>flex: 1,\<return>},\<return>body: {\<return>flex: 1,\<return>paddingTop: Platform.OS === 'android' ? StatusBar.currentHeight : 0,\<return>backgroundColor: colors.ChangeColor,\<return>\<return>},\<return>})"
      let @/ = "ChangeColor"
    else
      execute "normal! aimport { StyleSheet } from 'react-native'\<return>\<return>// import colors from '../../config/colors'\<return>\<backspace>\<backspace>\<backspace>\<return>export default StyleSheet.create({\<return>ChangeStyleObject: {\<return>ChangeStyles\<return>},\<return>})"
      let @/ = "ChangeStyleObject\\|ChangeStyles"
    endif
  endfunction
  " react Native Style Platform Specific
  nnoremap <silent> ,nsps a../..Platform.select({<return>ios: {<return>ChangeStyle: ChangeStyleValue,<return>},<return>android: {<return>ChangeStyle: ChangeStyleValue,<return>},<return>}),<esc>/ChangeStyleValue\\|ChangeStyle<return>

" react Native Script mappings
  " react Native Script Export Function
  nnoremap <silent> ,nsef aexport function ChangeFunction(ChangeArgs) {<return>ChangeLogic<return>}<esc>/ChangeFunction\\|ChangeArgs\\|ChangeLogic<return>

" react Native Component mappings
  " react Native Component BAse
  nnoremap <silent> ,ncba :call ReactNativeComponentBase()<return>n
  function! ReactNativeComponentBase()
    let camel_prep =  '_' . split(expand('%:t'), '\.')[0]
    let file_camel = substitute(camel_prep, '_\([a-zA-Z]\)', '\u\1',  'g')
    execute "normal! aimport React from 'react'\<return>import { ChangeComponent } from 'react-native'\<return>\<return>// import * as script from './scripts'\<return>\<backspace>\<backspace>\<backspace>import styles from './styles'\<return>\<return>export default function " . file_camel . "({ children }) {\<return>return (\<return><ChangeComponent\<esc>ostyle={styles.ChangeStyleObject}\<esc>o>\<return>{children}\<esc>o</ChangeComponent>\<return>\<return>)\<return>}"
    let @/ = "ChangeComponent\\|ChangeStyleObject"
  endfunction
