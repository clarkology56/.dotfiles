" Javascript jQuery
  " Javascript jQiery SElect
  nnoremap <silent> ,jqse a$(ChangeJq)<esc>/ChangeJq<return>
  " Javascript jQiery Select Class
  nnoremap <silent> ,jqsc a$('.ChangeClass')<esc>/ChangeClass<return>
  " Javascript jQiery Select Id
  nnoremap <silent> ,jqsi a$('#ChangeId')<esc>/ChangeId<return>
  " Javascript jQiery Select Attribute
  nnoremap <silent> ,jqsa a$('[ChangeAttribute]')<esc>/ChangeAttribute\\|ChangeValue<return>
  " Javascript jQiery Select Data attribute
  nnoremap <silent> ,jqsd a$('[data-ChangeAttribute]')<esc>/ChangeAttribute<return>
  " Javascript jQiery Select attribute contains *
  nnoremap <silent> ,jqs* a$("[ChangeAttribute*='ChangeString']")<esc>/ChangeAttribute\\|ChangeString<return>
  " Javascript jQiery Select attribute Value
  nnoremap <silent> ,jqsv a$("[ChangeAttribute='ChangeValue']")<esc>/ChangeAttribute\\|ChangeValue<return>
  " Javascript jQiery Document On
  nnoremap <silent> ,jqdo :call JavascriptReadyAndAjaxVsOnNotes()<return>a// DeleteThis - make sure that query will account for future elements that may be rendered via ajax<return>DeleteThis - if you need to trigger other events based on some feature ID, use (,jqdO)<return><backspace><backspace><backspace>$(document).on('ChangeEvents', 'ChangeSelectors', {}, function(event){<return>})<esc>/DeleteThis\\|ChangeEvents\\|ChangeSelectors<return>
  
  " Javascript jQiery Document On for feature
  nnoremap <silent> ,jqdO :call JavascriptReadyAndAjaxVsOnNotes()<return>a// DeleteThis - call main element and use id to call other functions<return><backspace><backspace><backspace>$(document).on('ChangeEvents', '[data-ChangeFeatureNameId]', {}, function(event){<return>// DeleteThis - find the feature Id and pass it to methods. Ex:<return><backspace><backspace><backspace>var ChangeFeatureNameId = this.getAttribute('data-ChangeFeatureNameId')<return>ChangeMethod(ChangeFeatureNameId)<return>})<esc>/DeleteThis\\|ChangeEvents\\|ChangeFeatureName\\|ChangeMethod<return>
  " Javascript jQiery document ready and ajax complete
  nnoremap <silent> ,jqra :call JavascriptReadyAndAjaxVsOnNotes()<return>a$(document).ready(function(){ChangeFeatureNameSetUp()})<return>$(document).on('ajax:complete', function(){ChangeFeatureNameSetUp()})<return>function ChangeFeatureNameSetUp() {<return>// DeleteThis - do not use $(document).on(...) within anywhere ChangeFeatureNameSetUp (or functions subsequently called) because ajax will duplicate events listeners on document (ajax does not replace document, so any event added to document at ready would be duplicated again after ajax).<return>Set up ChangeFeatureName elements that have not been set up<return>DeleteThis - typically you are looking for an element with a data attribute with ChangeFeatureNameId. If not, search for whatever you need<return><backspace><backspace><backspace>$('[data-ChangeFeatureNameId]').not('.ChangeFeatureName_set').each(function(index, mainChangeElm){<return>// DeleteThis - mark element as set so it won't get set again later<return><backspace><backspace><backspace>mainChangeElm.classList.add('ChangeFeatureName_set')<return>// DeleteThis - remember, "document ready & ajax complete" should be used to modify elements. If simply adding event listeners, use "document on"<return>DeleteThis - you may need to find other elements based on a specific ChangeFeatureNameId. If so, use this<return><backspace><backspace><backspace>var ChangeFeatureNameId = mainChangeElm.getAttribute('data-ChangeFeatureNameId')<return>ChangeMethod(ChangeFeatureNameId)<return>// DeleteThis - otherwise, modify mainChangeElm directly:<return><backspace><backspace><backspace>ChangeLogicToModifyMainElementDirectly<return>})<return>}<esc>/DeleteThis\\|ChangeFeatureName\\|ChangeMethod\\|ChangeElm\\|ChangeLogicToModifyMainElementDirectly<return>
  function JavascriptReadyAndAjaxVsOnNotes()
    execute "normal! a// DeleteThis - use \"document on\" (,jqdo) when event listeners need to be added OR when elements need to be modified every time an event occures (as opposed to only at set up)\<return>DeleteThis - use \"document ready and ajax complete\" combo (,jqra) when elements need to be modified at set up.\<return>\<backspace>\<backspace>\<backspace>"
  endfunction
   " Javascript jQiery Element On
  nnoremap <silent> ,jqeo a$(ChangeJq).on('ChangeEvent', function(){})<esc>hi<return><esc>/ChangeJq\\|ChangeEvent<return>
  " Javascript jQiery Document Ready
  nnoremap <silent> ,jqdr a$(document).ready(function(){<return>})<esc>O
  " Javascript jQiery Document Ajax complete
  nnoremap <silent> ,jqda a$(document).on('ajax:complete', function(){<return>})<esc>O
 " Javascript jQiery html
  nnoremap <silent> ,jqht ahtml("ChangeHtml")<esc>/ChangeHtml<return>
  " Javascript jQiery html (full)
  nnoremap <silent> ,jqhT ahtml("<%= escape_javascript(render(ChangeRender)) %>")<esc>/ChangeRender<return>n
  " Javascript jQiery EAch
  nnoremap <silent> ,jqea aeach(function(index, ChangeElm){<return>})<esc>/ChangeElm<return>
  inoremap <silent> eachj each(function(index, ChangeElm){<return>})<esc>/ChangeElm<return>

" Javascript Vanilla
  " Javascript Vanilla IF
  nnoremap <silent> ,jvif aif (ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
  " Javascript Vanilla IF inline
  nnoremap <silent> ,jviF aif (ChangeThisPls) ChangeThisPls<esc>/ChangeThisPls<return>
  " Javascript Vanilla If Else
  nnoremap <silent> ,jvie aif (ChangeThisPls) {<return>} else {<return>}<esc>/ChangeThisPls<return>
  " Javascript Vanilla If Else if else
  nnoremap <silent> ,jviE aif (ChangeThisPls) {<return>} else if (ChangeThisPls) {<return>} else {<return>}<esc>/ChangeThisPls<return>
  " Javascript Vanilla TErnary
  nnoremap <silent> ,jvte aChangeBoolean ? ChangeTrueResult : ChangeFalseResult<esc>/ChangeBoolean\\|ChangeTrueResult\\|ChangeFalseResult<return>
  " Javascrip Vanilla FOr
  nnoremap <silent> ,jvfo afor (ChangeThisPls of ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
  inoremap <silent> forjv for (ChangeThisPls of ChangeThisPls) {<return>}<esc>/ChangeThisPls<return>
  " Javascrip Vanilla FOr Each (doesn't seem to work???)
  nnoremap <silent> ,jvfe aforEach(function(ChangeVar, index){<return>})<esc>/ChangeVar<return>
  inoremap <silent> forEach forEach(function(ChangeVar, index){<return>})<esc>/ChangeVar<return>
  " Javascript Vanilla FUnction
  nnoremap <silent> ,jvfu afunction ChangeThisPls(){<return>}<esc>/ChangeThisPls<return>
  " Javascript Vanilla Get Attribute
  nnoremap <silent> ,jvga agetAttribute('ChangeAttribute')<esc>/ChangeAttribute<return>
  " Javascript Vanilla Add Attribute
  nnoremap <silent> ,jvaa aaddAttribute('ChangeAttribute')<esc>/ChangeAttribute<return>
  " Javascript Vanilla Remove Attribute
  nnoremap <silent> ,jvra aremoveAttribute('ChangeAttribute')<esc>/ChangeAttribute<return>
  " Javascript Vanilla Set Attribute
  nnoremap <silent> ,jvsa asetAttribute('ChangeAttribute', 'ChangeValue')<esc>/ChangeAttribute\\|ChangeValue<return>
  " Javascript Vanilla STyle
  nnoremap <silent> ,jvst astyle.ChangeProperty = ChangeValue<esc>/ChangeProperty\\|ChangeValue<return>
  " Javascript Vanilla Class list Contains
  nnoremap <silent> ,jvcc aclassList.contains('ChangeClass')<esc>/ChangeClass<return>
  " Javascript Vanilla Class list Add
  nnoremap <silent> ,jvca aclassList.add('FirstClassToAdd')<esc>/FirstClassToAdd<return>
  " Javascript Vanilla Class list Remove
  nnoremap <silent> ,jvcr aclassList.remove('FirstClassToRemove')<esc>/FirstClassToRemove<return>
  " Javascript Vanilla Class list Toggle
  nnoremap <silent> ,jvct aclassList.toggle('ChangeClass')<esc>/ChangeClass<return>
  " Javascript Vanilla Console Log
  nnoremap <silent> ,jvcl aconsole.log(ChangeThisPls)<esc>/ChangeThisPls<return>
  " Javascript Vanilla ALert
  nnoremap <silent> ,jval aalert(ChangeThisPls)<esc>/ChangeThisPls<return>
  " Javascript Vanilla Dispatch Event
  nnoremap <silent> ,jvde adocument.dispatchEvent(new Event('ChangeEvent'));<esc>/ChangeEvent<return>
  " Javascript Vanilla Inner Html
  nnoremap <silent> ,jvih ainnerHTML = "ChangeHTML"<esc>/ChangeHTML<return>
  " Javascript Vanilla Inner Html (full)
  nnoremap <silent> ,jviH ainnerHTML = "<%= escape_javascript(render(ChangeRender)) %>"<esc>/ChangeRender<return>
  " Javascript Vanilla Append Html
  nnoremap <silent> ,jvah ainnerHTML += "ChangeHTML"<esc>/ChangeHTML<return>
  " Javascript Vanilla Prepend Html
  nnoremap <silent> ,jvph ainnerHTML = "ChangeHTML" + ChangeElement.innerHTML<esc>/ChangeHTML\\|ChangeElement<return>
  " Javascript Vanilla Get Computed style
  nnoremap <silent> ,jvgc agetComputedStyle(ChangeElement, null).ChangeStyle<esc>/ChangeElement\\|ChangeStyle<return>
  " 
  nnoremap <silent> ,jvcd aconsole.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW1')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW2')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW3')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW4')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW5')<return>console.log('WWWWWWWWWWWWWWWWWWWWWWWWWWWWWW6')<return>console.log(ChangeThis)<esc>/ChangeThis<return>
  " Javascript Vanilla Create Element
  nnoremap <silent> ,jvce a// DeleteThis - create element<return><esc>0Cvar ChangeNewElement = document.createElement('CHANGEELEMENTTYPE')<return>ChangeNewElement.id = 'ChangeId'<return>ChangeNewElement.classList.add('ChangeClass')<return>ChangeNewElement.innerHTML = "<%= escape_javascript(render(ChangeRender)) %>"<return><return>// DeleteThis - get parent if inserting at beginning or end of parent<return><esc>0Cvar ChangeParent = document.getElementById('ChangeId')<return>// DeleteThis - if inserting at beginning of parent<return><esc>0CChangeParent.prepend(ChangeNewElement)<return>// DeleteThis - if inserting at end of parent<return><esc>0CChangeParent.append(ChangeNewElement)<return><return>// DeleteThis - get sibling if inserting before or after sibling<return><esc>0Cvar ChangeSibling = document.getElementById('#ChangeId')<return>// DeleteThis - if inserting before sibling<return><esc>0CChangeSibling.before(ChangeNewElement)<return>// DeleteThis - if inserting after sibling<return><esc>0CChangeSibling.after(ChangeNewElement)<esc>/DeleteThis\\|ChangeNewElement\\|CHANGEELEMENTTYPE\\|ChangeId\\|ChangeClass\\|ChangeRender\\|ChangeParent\\|ChangeSibling<return>

" Javascript Ruby
  " Javascript Ruby Escape Javascript with partial
  nnoremap <silent> ,jrej a<%= escape_javascript(render(ChangeRender)) %><esc>/ChangeRender<return>
