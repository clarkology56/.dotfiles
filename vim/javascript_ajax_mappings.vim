" Javascript Ajax
  " Javascript Ajax BAse
  nnoremap <silent> ,jaba :read ../templates/javascript/ajax/base.js.erb<return>ggdd/DeleteThis<return>
  " Javascript Ajax SUccess
  nnoremap <silent> ,jasu :read ../templates/javascript/ajax/success.js.erb<return>/ChangeThisPls\\|CopyIdFromView\\|ChangeRender\\|DeleteThis<return>
  " Javascript Ajax CReate
  nmap <silent> ,jacr ,jasu
  " Javascript Ajax CReate by adding to end and re-rendering new
  nnoremap <silent> ,jacR :read ../templates/javascript/ajax/create.js.erb<return>/DeleteThis\\|CHANGEELEMENTTYPE\\|ChangeId\\|ChangeClass\\|ChangeRender\\|ChangeSibling\\|CopyIdFromView<return>
  " Javascript Ajax Invalid Create
  nnoremap <silent> ,jaic :read ../templates/javascript/ajax/invalid_create.js.erb<return>/ChangeSesId\\|ChangeRender\\|CopyPathFromView\\|ChangeObject\\|DeleteThis\\|ChangeModel\\|ChangeRender\\|CopyIdFromView<return>
  " Javascript Ajax UPdate
  nmap <silent> ,jaup ,jasu
  " Javascript Ajax Invalid Update
  nnoremap <silent> ,jaiu :read ../templates/javascript/ajax/invalid_update.js.erb<return>/ChangeSesId\\|ChangeRender\\|ChangeObject\\|DeleteThis\\|ChangeRender\\|CopyIdFromView<return>
  " Javascript Ajax DEstroy
  nmap <silent> ,jade ,jasu
  " Javascript Ajax Invalid Destroy
  nmap <silent> ,jaid ,jasu
  " Javascript Ajax Re-render Partial 
  nnoremap <silent> ,jarp a$("#CopyIdFromView").html("<%= escape_javascript(render(ChangeRender)) %>");<esc>/CopyIdFromView\\|ChangeRender<return>
  " Javascript Ajax Window Location replace
  nnoremap <silent> ,jawl awindow.location.replace("<%= ChangeUrl %>")<esc>/ChangeUrl<return>
