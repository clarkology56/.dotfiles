" react Native Components mappings
  " react Native Components BAse
  nnoremap <silent> ,ncba :call ReactNativeComponentBase()<return>n
  function! ReactNativeComponentBase()
    let camel_prep =  '_' . split(expand('%:t'), '\.')[0]
    let file_camel = substitute(camel_prep, '_\([a-zA-Z]\)', '\u\1',  'g')
    execute "normal! aimport React from 'react'\<return>import { ChangeComponent } from 'react-native'\<return>\<return>// import * as script from './scripts'\<return>\<backspace>\<backspace>\<backspace>import styles from './styles'\<return>\<return>export default function " . file_camel . "({ ChangeProps, children }) {\<return>return (\<return><ChangeComponent\<esc>ostyle={styles.ChangeStyleObject}\<esc>o>\<return>{children}\<esc>o</ChangeComponent>\<return>)\<return>}"
    let @/ = "ChangeComponent\\|ChangeProps\\|ChangeStyleObject"
  endfunction
  " react Native Components VIew
  nnoremap <silent> ,ncvi a<View<space><backspace><return>style={styles.ChangeStyleObject}<esc>o><esc>o</View><esc>/ChangeStyleObject\\|ChangeAsset\\|ChangeWidth\\|ChangeHeight\\|ChangeUrl<return>
  " react Native Components IMage
  nnoremap <silent> ,ncim a<Image<space><backspace><return>loadingIndicatorSource={require('../../assets/loading.png')}<esc>ostyle={styles.ChangeStyleObject}<esc>osource={require('../../assets/ChangeAsset')}<esc>osource={{<return>width: ChangeWidth,<return>height: ChangeHeight,<return>uri: 'ChangeUrl'<return>}}<esc>o/><esc>/ChangeStyleObject\\|ChangeAsset\\|ChangeWidth\\|ChangeHeight\\|ChangeUrl<return>
  " react Native Components Icon
    nnoremap <silent> ,ncic a<ChangeDesigner<esc>oname="ChangeName"<return>size={ChangeSize}<esc>ocolor={colors.ChangeColor}<esc>o/><esc>/ChangeDesigner\\|ChangeName\\|ChangeSize\\|ChangeColor<return>
