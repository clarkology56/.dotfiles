" react Native Style mappings
  " react Native Styles Base for View
  nnoremap <silent> ,nsvb :call ReactNativeStyleBase('view_base')<return>n
  nnoremap <silent> ,nsva :call ReactNativeStyleBase('view_absolute')<return>n
  nnoremap <silent> ,nsvB :call ReactNativeStyleBase('view_blank')<return>n
  " react Native Styles Base for Component
  nnoremap <silent> ,nscb :call ReactNativeStyleBase('component_base')<return>n
  function! ReactNativeStyleBase(type)
    if a:type == 'view_base'
      execute "normal! aimport { Platform, StatusBar, StyleSheet } from 'react-native'\<return>\<return>import colors from '../../config/colors'\<return>\<return>export default StyleSheet.create({\<return>body: {\<return>flex: 1,\<return>paddingTop: Platform.OS === 'android' ? StatusBar.currentHeight : 0,\<return>backgroundColor: colors.ChangeColor,\<return>},\<return>})"
      let @/ = "ChangeColor"
    elseif a:type == 'view_absolute'
      execute "normal! aimport { Platform, StatusBar, StyleSheet } from 'react-native'\<return>\<return>import colors from '../../config/colors'\<return>\<return>export default StyleSheet.create({\<return>absoluteContainer: {\<return>flex: 1,\<return>},\<return>body: {\<return>flex: 1,\<return>paddingTop: Platform.OS === 'android' ? StatusBar.currentHeight : 0,\<return>backgroundColor: colors.ChangeColor,\<return>},\<return>})"
    elseif a:type == 'component_base' || a:type == 'view_blank'
      execute "normal! aimport { StyleSheet } from 'react-native'\<return>\<return>// import colors from '../../config/colors'\<return>\<backspace>\<backspace>\<backspace>\<return>export default StyleSheet.create({\<return>ChangeStyleObject: {\<return>ChangeStyles\<return>},\<return>})"
      let @/ = "ChangeStyleObject\\|ChangeStyles"
    endif
  endfunction
  " react Native Styles Platform Specific
  nnoremap <silent> ,nsps a../..Platform.select({<return>ios: {<return>ChangeStyle: ChangeStyleValue,<return>},<return>android: {<return>ChangeStyle: ChangeStyleValue,<return>},<return>}),<esc>/ChangeStyleValue\\|ChangeStyle<return>
  " react Native Styles IMage
  nnoremap <silent> ,nsim aChangeStyleObject: {<return>height: ChangeHeight,<return>width: '100%',<return>},<esc>/ChangeStyleObject\\|ChangeHeight<return>
  
