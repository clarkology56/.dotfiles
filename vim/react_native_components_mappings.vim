" react Native Components mappings
  " react Native Components BAse
  nnoremap <silent> ,ncba :call ReactNativeComponentBase()<return>n
  function! ReactNativeComponentBase()
    let camel_prep =  '_' . split(expand('%:t'), '\.')[0]
    let file_camel = substitute(camel_prep, '_\([a-zA-Z]\)', '\u\1',  'g')
    execute "normal! aimport { ChangeComponent, StyleSheet } from 'react-native'\<return>\<return>export default function " . file_camel . "({ ChangeProp }) {\<return>return (\<return><ChangeComponent\<esc>ostyle={styles.ChangeStyleObject}\<esc>o>\<return>{children}\<esc>o</ChangeComponent>\<return>)\<return>}\<return>\<return>const styles = StyleSheet.create({\<return>ChangeStyleObject: { ChangeStyleProp: ChangeValue },\<return>})"
    let @/ = "ChangeComponent\\|ChangeProps\\|ChangeStyleObject\\|ChangeStyleProp\\|ChangeValue"
  endfunction
  " react Native Components VIew
  nnoremap <silent> ,ncvi a<View<space><backspace><return>style={styles.ChangeStyleObject}<esc>o><esc>o</View><esc>/ChangeStyleObject\\|ChangeAsset\\|ChangeWidth\\|ChangeHeight\\|ChangeUrl<return>
  " react Native Components IMage
  nnoremap <silent> ,ncim a<Image<space><backspace><return>loadingIndicatorSource={require('../../assets/loading.png')}<esc>ostyle={styles.ChangeStyleObject}<esc>osource={require('../../assets/ChangeAsset')}<esc>osource={{<return>width: ChangeWidth,<return>height: ChangeHeight,<return>uri: 'ChangeUrl'<return>}}<esc>o/><esc>/ChangeStyleObject\\|ChangeAsset\\|ChangeWidth\\|ChangeHeight\\|ChangeUrl<return>
  " react Native Components Icon
    nnoremap <silent> ,ncic a<ChangeDesigner<esc>oname="ChangeName"<return>size={ChangeSize}<esc>ocolor={colors.ChangeColor}<esc>o/><esc>/ChangeDesigner\\|ChangeName\\|ChangeSize\\|ChangeColor<return>
  " react Native Components FLatlist
  nnoremap <silent> ,ncfl a<FlatList<esc>odata={ChangeItems}<esc>okeyExtractor={ChangeItem => ChangeItem.id.toString()}<esc>orenderItem={({item}) => (<esc>o<ChangeComponent /><esc>o)}<esc>oItemSeparatorComponent={BaseListSeparator}<esc>orefresching={refreshing}<esc>oonRefresh={ChangeRefreshAction}/><esc>/ChangeItems\\|ChangeComponent\\|ChangeItem\\|ChangeRefreshAction<return>
  " react Native Components Touchable Highlight
  nnoremap <silent> ,ncth a<TouchableHighlight<esc>oonPress={ChangeOnpress}<esc>ounderlayColor={colors.ChangeColor}    <esc>o><return></TouchableHighlight><esc>/ChangeOnpress\\|ChangeColor<return>
  
