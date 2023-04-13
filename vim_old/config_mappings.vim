" Routes
  " Routes NAmespace
  nnoremap <silent> ,crna anamespace :ChangeNamespace do<return>end<esc>/ChangeNamespace<return>
  " Routes SCope
  nnoremap <silent> ,crsc ascope path: :ChangeUrl, module: :ChangeNamespace, as: :ChangeNamespace do<return>end<return># DeleteThis - Path changes url. Module changes namespace in file structure. As changes url helper prefix<return>DeleteThis - Module and As should always be the same per Upserv conventions.<return>DeleteThis - Make url whatever you want the user to see in the address bar.<esc>/DeleteThis\\|ChangeUrl\\|ChangeNamespace<return>
  " Routes REsources
  nnoremap <silent> ,crre aresources :ChangeController, only: %i[index show create update destroy]<esc><up>/ChangeController\\|index \\|show \\|create \\|update \\|destroy<return>
  " Routes Resources with custom Path
  nnoremap <silent> ,crrp aresources :ChangeController, path: :ChangeUrl, only: %i[index show create update destroy]<esc><up>/ChangeUrl\\|ChangeController\\|index \\|show \\|create \\|update \\|destroy<return>
  " Routes Nested Resources
  nnoremap <silent> ,crnr aget ':id/ChangeController', to: 'ChangeController#index', as: :ChangeController<esc>opost ':id/ChangeController', to: 'ChangeController#create', as: :ChangeController<return># DeleteThis - remove as: :ChangeController in post method for create action if already included in get method for index action above (including it in both will cause error because rails tries to create the same url helper twice)<return><backspace><backspace>resources :ChangeController, only: %i[show update destroy]<esc>/ChangeController\\|DeleteThis<return>
  nnoremap ,crmg aget ':id/ChangeControllerPlural', to: 'ChangeControllerPlural', as: :ChangeControllerSingular<esc>/ChangeControllerPlural\\|ChangeControllerSingular<return>
  " Routes GEt (for non-restful routes)
  nnoremap <silent> ,crge aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>

  
  " everything below should probably be depricated / or just removed...
  

  " Routes Member Get
  "nnoremap <silent> ,crmg aget ':id/ChangeMemberInUrl', to: 'ChangeMemberController#show', as: :ChangeMemberSingular<esc>/ChangeMemberInUrl\\|ChangeMemberController\\|ChangeMemberSingular<return>
" other routes
  "
  " Routes REsources full
  nnoremap <silent> ,crrE aresources path: :ChangeThisPls, controller: :ChangeThisPls, as: :ChangeThisPls, only: %i[index show create update destroy]<esc>/ChangeThisPls<return>

  nnoremap <silent> ,crra aresources path: :ChangeThisPls, module: :ChangeThisPls, as: :ChangeThisPls, only: %i[] do<return>end<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crme amember do<return>end<esc>O <backspace><esc>
  " Routes GEt full (for non-restful routes)
  nnoremap <silent> ,crgE aget 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crgn aget ':id/ChangeThisPls', to: 'ChangeThisPls#index', as: :ChangeThisPls<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crpo apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crpO apost 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crpn apost ':id/ChangeThisPls', to: 'ChangeThisPls#create'<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crpa apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crpA apatch 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crde adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls'<esc>/ChangeThisPls<return>
  "
  nnoremap <silent> ,crdE adelete 'ChangeThisPls', to: 'ChangeThisPls#ChangeThisPls', as: :ChangeThisPls<esc>/ChangeThisPls<return>
