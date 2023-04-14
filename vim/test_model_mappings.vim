" Tests Model BAse
nnoremap <silent> ,tmba :call CreateBaseFile(1, 1, 1)<return>/outer_followup<return>cgnrequire 'test_helper'<esc>o<esc>/class<return>A < ActiveSupport::TestCase<esc>/ChangeTopLevelDocumentation<return><down>^wviwy/ChangeTopLevelDocumentation<return>viwpbiTest for <esc>0/Test<return>ncgn model<esc>:call IndentTemplate('inner_followup', 'test/models/base.rb')<return>:call TestDisclaimer()<return>/DeleteThis\\|ChangeModel<return>






"" Models Search
"function! TestModelSearch()
"  let @/ = 'ChangeParent\|ChangeChildrenSingular\|ChangeChildren\|ChangeChildModel\|ChangeChild\|DeleteThis\|ChangeAttributes\|ChangeAttribute\|ChangeObject\|ChangeInvalidValue\|ChangeValue\|ChangeValidation\|ChangeConnectionModel\|ChangeAssociationSingular\|ChangeAssociation\|ChangeTable\|ChangeFixture\|ChangeScope\|ChangeClass\|ChangeThisPls\|ChangeDescription\|ChangeModel\|ChangeNextAttribute\|ChangeOneOrMany\|ChangeVariable\|ChangePathAndExtension\|ChangeContentType\|CopyScopeMethods\|ChangeMethod\|ChangeThroughAssociation'
"  normal! n
"endfunction
"
"" Test Models Associations
"  " Tests Models Belongs To
"  nnoremap <silent> ,tmbt atest 'association - belongs to ChangeParent' do<return>assert_equal ChangeTable(:ChangeFixture), @ChangeChild.ChangeParent<return>end<esc>:call TestModelSearch()<return>
"  " Tests Models Has One
"  nnoremap <silent> ,tmho atest 'association - has one ChangeChild' do<return>assert_equal ChangeTable(:ChangeFixture), @ChangeParent.ChangeChild<return>end<esc>:call TestModelSearch()<return>
"  " Tests Models Has One Through
"  nnoremap <silent> ,tmhO atest 'association - has one ChangeParent through ChangeThroughAssociation' do<return>assert_equal ChangeTable(:ChangeFixture), @ChangeParent.ChangeChild<return>end<esc>:call TestModelSearch()<return>
"  " Tests Models Has Many
"  nnoremap <silent> ,tmhm atest 'association - has many ChangeChildren' do<return>result = @ChangeParent.ChangeChildrenSingular_ids<return>assert_equal ChangeChildModel.where(ChangeParent_id: @ChangeParent.id).pluck(:id).sort, result.sort<return><space><backspace><esc>:call TestIncludedNotIncluded()<return>oend<esc>:call TestModelSearch()<return>
"  " Tests Models Has Many through
"  nnoremap <silent> ,tmhM atest 'association - has many ChangeChildren through ChangeThroughAssociation' do<return>result = ChangeParent.ChangeAssociationSingular_ids<return># DeleteThis - use this for simple connection table (many to many)<return><backspace><backspace>assert_equal ChangeConnectionModel.where(ChangeParent_id: @ChangeParent.id).pluck(:ChangeChild_id).sort, result.sort<return># DeleteThis - if not simple connection but does have inverse, use this<return><backspace><backspace>assert_equal ChangeChildModel.joins(:ChangeAssociation).where(id: @ChangeParent.id).distinct.pluck(:id).sort, result.uniq.sort<return><space><backspace><esc>:call TestIncludedNotIncluded()<return>oend<esc>:call TestModelSearch()<return>
"  " Tests Models Has Attached
"  nnoremap <silent> ,tmoa atest 'association - has one attached ChangeAssociation' do<return>assert_nil @ChangeObject.ChangeAssociation.attachment<return><space><backspace><esc>:call TestsFixturesUploadFile()<return>oassert_not_nil @ChangeObject.ChangeAssociation.attachment<return>end<esc>:call TestModelSearch()<return>
"  " Tests Models Has many Attached
"  nnoremap <silent> ,tmma atest 'association - has many attached ChangeAssociation' do<return>assert_empty @ChangeObject.ChangeAssociation<return><space><backspace><esc>:call TestsFixturesUploadFile()<return>oassert_not_empty @ChangeObject.ChangeAssociation<return>end<esc>:call TestModelSearch()<return>
"
"" Test Models Scopes
"  " Tests Models Scope - Where
"  nnoremap <silent> ,tmsw atest 'scope - ChangeScope' do<return>result = ChangeModel.ChangeScope.pluck(:id)<return>assert_equal ChangeClass.CopyScopeMethods.pluck(:id), result<return><space><backspace><esc>:call TestIncludedNotIncluded()<return>oend<esc>:call TestModelSearch()<return>
"  " Tests Models Scope - Order
"  nnoremap <silent> ,tmso atest 'scope - ChangeScope' do<return>result = ChangeModel.ChangeScope.pluck(:id)<return>assert_equal ChangeClass.CopyScopeMethods.pluck(:id), result<return>first = ChangeTable(:ChangeFixture).id<return>second = ChangeTable(:ChangeFixture).id<return>assert result.find_index(first) < result.find_index(second)<return>end<esc>:call TestModelSearch()<return>
"  nnoremap <silent> ,tmso :call TestModelsScopeOrder()<return>
"  function TestModelsScopeOrder()
"    let scope_name = input("What is the name of the scope?: ")
"    let model_name = input("What is the model name (camel case, ex. \"Core::UserRole\"): ")
"    let table_name = input("What is the table name for the model (snake case, ex. \"core_user_roles\"): ")
"    execute "normal! atest 'scope - " . scope_name . "' do"
"    execute "normal! oresult = " . model_name . "." . scope_name . ".map(&:id)"
"    execute "normal! oassert_equal " . model_name . ".CopyScopeMethods.pluck(:id), result"
"    execute "normal! ofirst = " . table_name . "(:ChangeFixture).id"
"    execute "normal! osecond = " . table_name . "(:ChangeFixture).id"
"    execute "normal! oassert result.find_index(first) < result.find_index(second)\<return>end"
"    call TestModelSearch()
"  endfunction
"  " Tests Models Scope - Pluck
"  nnoremap <silent> ,tmsp atest 'scope - ChangeScope' do<return>result = ChangeModel.ChangeScope<return>assert_equal ChangeClass.CopyScopeMethods, result<return>ChangeObject = ChangeTable(:ChangeFixture)<return>included = []<return># DeleteThis - use this if pluck returns only one item<return><backspace><backspace>included << ChangeObject.ChangeMethod<return># DeleteThis - use this if pluck returns multiple items<return><backspace><backspace>included << [ChangeObject.ChangeMethod, ChangeObject.ChangeMethod]<return>assert_equal included, (result & included)<return>end<esc>:call TestModelSearch()<return>
"
"" Test Models Attributes
"  " Tests Models Atributes Base
"  nnoremap <silent> ,tmab atest 'attributes' do<return>ChangeObject = ChangeClass.new<return>end<esc>/ChangeObject\\|ChangeClass<return>
"  " Tests Models ATtribute
"  nnoremap <silent> ,tmat a# DeleteThis - if attribute does not specify a datatype, simply call the attribute to ensure no errors<return><backspace><backspace>ChangeObject.ChangeAttribute<return># DeleteThis - if attribute specifies datadype, set to different datatype and assert it is converted (or set to nil if conversion is not possible)<return>DeleteThis - example: ChangeObject.ChangeAttribute = [] should make ChangeObject.ChangeAttribute nil<return><backspace><backspace>ChangeObject.ChangeAttribute = ChangeIncorrectDataType<return>assert_equal ChangeConvertedValueOrNil, ChangeObject.ChangeAttribute<esc>/DeleteThis\\|ChangeObject\\|ChangeIncorrectDataType\\|ChangeAttribute\\|ChangeConvertedValueOrNil<return>
"  " Tests Models Attribute Enum
"  nnoremap <silent> ,tmae a# DeleteThis - make sure to include base test for attributes if you haven't already (,tmab)<return>DeleteThis - run through list of possible database values and simply make sure they dont error (no assertions needed)<return><backspace><backspace>[ChangePossibleIntegerValues].each do \|value_for_database\|<return>ChangeObject.ChangeAttribute = value_for_database<return>end<esc>/DeleteThis\\|ChangePossibleIntegerValues\\|ChangeObject\\|ChangeAttribute<return>
"  " Tests Models Attributes Hash
"  nnoremap <silent> ,tmah aassert_equal({}, ChangeObject.ChangeAttribute)<esc>/ChangeObject\\|ChangeAttribute<return>
"  " Tests Models Attributes Array
"  nnoremap <silent> ,tmaa aassert_equal [], ChangeObject.ChangeAttribute<esc>/ChangeObject\\|ChangeAttribute<return>
"
"" Test Models Callbacks
"  " Test Models CAllback
"  nnoremap <silent> ,tmca atest 'callback - ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
"  " Tests Model Process attributes
"  nnoremap <silent> ,tmpa atest 'callback - process attributes' do<return>@ChangeObject.assign_attributes(ChangeAttribute: '    a     ')<return>@ChangeObject.valid?<return>assert_equal 'a', @ChangeObject.ChangeAttribute<return>@ChangeObject.assign_attributes(ChangeAttribute: '')<return>@ChangeObject.valid?<return>assert_nil @ChangeObject.ChangeAttribute<return>end<esc>:call TestModelSearch()<return>
"  " Tests Model Nil Parent on orphanable childrend 
"  nnoremap <silent> ,tmnp atest 'callback - nil parent id on orphanable children before destroying parent' do<return>ChangeChild = @ChangeObject.ChangeChildren.first<return>assert_equal @ChangeObject.id, ChangeChild.ChangeParent_id<return>@ChangeObject.destroy<return>assert_nil ChangeChild.reload.ChangeParent_id<return>end<esc>:call TestModelSearch()<return>
"
"" Tests Models Validations
"  " Tests Models VAlidation
"  nnoremap <silent> ,tmva atest 'validation - ChangeObject ChangeAttribute should be ChangeValidation' do<return>@ChangeObject.assign_attributes(ChangeAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return>end<esc>:call TestModelSearch()<return>
"  " Tests Models Validate Attachment
"  nnoremap <silent> ,tmvA atest 'validation - ChangeObject ChangeAttribute should be ChangeValidation' do<return><space><backspace><esc>:call TestsBaseAttachFile()<return>oassert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return>end<esc>:call TestModelSearch()<return>
"  " Tests Models Validation Unique with scope
"  nnoremap <silent> ,tmvu atest 'validation - ChangeObject ChangeAttribute should be unique scoped to ChangeAttributes' do<return># make invalid<return><backspace><backspace>@ChangeObject.assign_attributes(ChangeAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return># DeleteThis - if there are additional attributes on scope, repeat for all other attribute by making it valid again and then invalid for next attribute until all attributes are covered<return>make valid so we can test ChangeNextAttribute<return><backspace><backspace>@ChangeObject.assign_attributes(ChangeAttribute: ChangeValue)<return>assert @ChangeObject.valid?<return># make invalid<return><backspace><backspace>@ChangeObject.assign_attributes(ChangeNextAttribute: ChangeInvalidValue)<return>assert_not @ChangeObject.valid?<return>assert_equal 1, @ChangeObject.errors.errors.count<return>assert_equal :ChangeAttribute, @ChangeObject.errors.errors.first.attribute<return>end<esc>:call TestModelSearch()<return>
"
"" Tests Models Attribute instance Method
"nnoremap <silent> ,tmam atest 'attribute instance method - ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
"
"" Tests Models Query instance Method
"nnoremap <silent> ,tmqm atest 'query instance method - ChangeMethodName' do<return>end<esc>/ChangeMethodName<return>
"
"" Tests Models Service instance Method
"nnoremap <silent> ,tmsm a# Service methods<return>Simply call methods to ensure no errors (actual logic tested in service test)<return>Service methods that add logic beyond calling service should be tested sepearately<return><backspace><backspace>test 'service instance methods' do<return>end<esc>O<space><backspace><esc>
"nnoremap <silent> ,tmsM atest 'service instance method - ChangeMethodName' do<return># DeleteThis - This test is for a service method that calls a service and adds logic. Create test accordingly.<return><backspace><backspace>end<esc>/ChangeMethodName\\|DeleteThis<return>
