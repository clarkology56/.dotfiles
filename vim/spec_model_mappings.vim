" Spec Model Validations
  " Spec Model Validation Search
  function SpecModelValidationSearch()
    let @/ = 'ChangeObject\|ChangeAttribute'
  endfunction
  " Spec Model Validation Verify
  function SpecModelValidationVerify()
    execute "normal! aexpect(ChangeObject.valid?).to eq(false)\<return>expect(ChangeObject.errors.errors.count).to eq(1)\<return>expect(ChangeObject.errors.errors.first.attribute).to eq(:ChangeAttribute)"
  endfunction
  " Spec Model Validation Verify
  nnoremap <silent> ,smve :call SpecModelValidationVerify()<return>: call SpecModelValidationSearch()<return>
