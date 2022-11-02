" Base / Misc
  " App Models BAse
  nnoremap <silent> ,amba :call CreateBaseFile(1, 0, 1)<return>/class<return>wviwy/ChangeTopLevelDocumentation<return>viwpa model<esc><down>A < ApplicationRecord<esc>/inner_followup<esc>ddO# Class Methods<space><backspace><return><backspace><backspace><return># Constants<space><backspace><space><backspace><return><backspace><backspace><return># Attributes<space><backspace><return><backspace><backspace><return># Callbacks<space><backspace><return><backspace><backspace><return># Validations<space><backspace><return><backspace><backspace><return># Associations<space><backspace><esc>o<esc>x0Do# Scopes<space><backspace><return>DeleteThis - create default order (if necessary). User LOWER if it should be case insensitive. Otherwise, use regulare order method.<return><backspace><backspace>scope :order_by_ChangeDefault, -> { order('LOWER(ChangeAttribute)') }<return>scope :order_by_ChangeDefault, -> { order(:ChangeAttribute) }<esc>o<esc>x0Do# Services<space><backspace><esc>o<esc>x0Do# Instance Methods<esc>gg/DeleteThis\\|ChangeDefault\\|ChangeAttribute<return>
  
  " App Models Cancancan Non-model based
  nnoremap <silent> ,amcn acan %i[ChangeAbility], :ChangeNamespace_ChangeControllerOrFeature<return># DeleteThis - ChangeAbility - use "admin" or a lesser permission or a specific controller action (never use "manage" - see note below)<return>DeleteThis - ChangeNamespace - the upserv "app" this ability belongs to (ex. "core" or "hr", etc.)<return>DeleteThis - ChangeControllerOrFeature - a specific controller or a feature that describes a collection of<return>controllers.<return><esc>:call AppModelsCancancanManageNote()<return>/ChangeAbility\\|ChangeNamespace\\|ChangeControllerOrFeature\\|DeleteThis<enter>
  " App Models Cancancan model based for Index
  nnoremap <silent> ,amci acan %i[index_ChangeNamespace_ChangeControllerOrFeature], ChangeModel, ChangeMethod: user.ChangeValue<return># DeleteThis - NOTE: accessible_by ALWAYS gets its own unique ability starting with "index" because<return>accessible_by errors when non-attribute (ie not columns in db) methods are used. This way regular<return>abilities will be kept separate so we can use any method on them and we don't have to worry about<return>accessible_by breaking.<return>DeleteThis - ChangeNamespace - the upserv "app" this ability belongs to (ex. "core" or "hr", etc.)<return>DeleteThis - ChangeControllerOrFeature - a specific controller or a feature that describes a collection of<return>controllers.<esc>/ChangeAbility\\|ChangeNamespace\\|ChangeControllerOrFeature\\|ChangeModel\\|ChangeMethod\\|ChangeValue\\|DeleteThis<enter>
  " App Models Cancancan Model based
  nnoremap <silent> ,amcm acan %i[ChangeAbility_ChangeNamespace_ChangeControllerOrFeature], ChangeModel, ChangeMethod: user.ChangeValue<return># DeleteThis - ChangeAbility - use "admin" or a lesser permission or a specific controller action (never use "manage" - see note below)<return>DeleteThis - ChangeNamespace - the upserv "app" this ability belongs to (ex. "core" or "hr", etc.)<return>DeleteThis - ChangeControllerOrFeature - a specific controller or a feature that describes a collection of<return>controllers.<return><esc>:call AppModelsCancancanManageNote()<return>/ChangeAbility\\|ChangeNamespace\\|ChangeControllerOrFeature\\|ChangeModel\\|ChangeMethod\\|ChangeValue\\|DeleteThis<enter>"
  function! AppModelsCancancanManageNote()
    execute "normal! aDeleteThis - NOTE: never use \"manage\" by iteself when defining abilities because \":manage\"\<return> by itself has special meaning in CanCanCan. Any abilities defined within \":manage\" will also be included\<return>in all other abilities defined for the model. This will unexpectedly give authorization in non-manage\<return>abilities. Ex. if \"can %i[manage], Core::User\" is used, then anything defined within it will also be\<return>applied to \"can %i[:show], Core::User\" which causes issues because usually you want anything defined in\<return>:show to be separate from and more restriced than :manage"
  endfunction

" Associations
  " App Models Belongs To association
  nnoremap <silent> ,ambt abelongs_to :ChangeParentName, autosave: false<esc>/ChangeParentName<return>
  " App Models Belongs To association - full (when in different namespace or 
  " association name doesn't match model name)
  nnoremap <silent> ,ambT abelongs_to :ChangeParentName, class_name: 'ChangeParentModel', inverse_of: :ChangeInverseAssociationInOtherModel, autosave: false<esc>/ChangeParentName\\|ChangeParentModel\\|ChangeInverseAssociationInOtherModel<return>
  " App Models Has One association
  nnoremap <silent> ,amho ahas_one :ChangeChildName, dependent: :destroy, autosave: false<esc>/ChangeChildName<return>
  " App Models Has One association - full (when in different namespace or 
  " association name doesn't match model name)
  nnoremap <silent> ,amhO ahas_one :ChangeChildName, class_name: 'ChangeChildModel', foreign_key: :ChangeParentName_id, inverse_of: :ChangeInverseAssociationInOtherModel, dependent: :destroy, autosave: false<esc>/ChangeChildName\\|ChangeChildModel\\|ChangeParentName\\|ChangeInverseAssociationInOtherModel<return>
  " App Models has One Through association
  nnoremap <silent> ,amHO ahas_one :ChangeChildOrParentName, through: :ChangeConnectingAssociationName, inverse_of: :ChangeInverseAssociationInOtherModel, autosave: false<esc>/ChangeChildOrParentName\\|ChangeConnectingAssociationName\\|ChangeInverseAssociationInOtherModel<return>
  " App Models Has Many association
  nnoremap <silent> ,amhm ahas_many :ChangeChildrenName, dependent: :destroy, autosave: false<esc>/ChangeChildrenName<return>
  " App Models Has Many association - full (when in different namespace or
  " association name doesn't match model name)
  nnoremap <silent> ,amhM ahas_many :ChangeChildrenName, class_name: 'ChangeChildModel', foreign_key: :ChangeParentName_id, inverse_of: :ChangeInverseAssociationInOtherModel, dependent: :destroy, autosave: false<esc>/ChangeChildrenName\\|ChangeChildModel\\|ChangeParentName\\|ChangeInverseAssociationInOtherModel<return>
  " App Models has Many Through association
  nnoremap <silent> ,amHM ahas_many :ChangeChildrenName, through: :ChangeConnectingAssociationName, inverse_of: :ChangeTopParentModel, autosave: false<esc>/ChangeChildrenName\\|ChangeChildrenName\\|ChangeConnectingAssociationName\\|ChangeTopParentModel<return>
  " App Models has Rich Text
  nnoremap <silent> ,amrt ahas_rich_text :ChangeAttribute<esc>/ChangeAttribute<return>
  " App Models has One Attached
  nnoremap <silent> ,amoa ahas_one_attached :ChangeAttribute<esc>/ChangeAttribute<return>
  " App Models has Many Attached
  nnoremap <silent> ,amma ahas_many_attached :ChangeAttributes<esc>/ChangeAttributes<return>

" Scopes
  " App Models SCope
  nnoremap <silent> ,amsc ascope :ChangeName, -> { ChangeLogic }<esc>/ChangeName\\|ChangeLogic<return>
  " App Models Scope with Argument(s)
  nnoremap <silent> ,amsa ascope :ChangeName, ->(ChangeArgument) { ChangeLogic }<esc>/ChangeName\\|ChangeArgument\\|ChangeLogic<return>
  " App Models Scope Multiline
  nnoremap <silent> ,amsm ascope :ChangeName, lambda { \|ChangeArgument\|<return>ChangeLogic<return>}<esc>/ChangeName\\|ChangeArgument\\|ChangeLogic<return>
  " App Models Scope Order
  nnoremap <silent> ,amso ascope :order_by_ChangeAttributes, -> { order(:ChangeAttribute, 'LOWER(ChangeTable.ChangeAttribute)') }<esc>/ChangeAttributes\\|ChangeTable\\|ChangeAttribute<return>
  nnoremap <silent> ,amsO ascope :order_and_distinct_on_ChangeAttributes, -> { select('DISTINCT ON (ChangeTable.ChangeAttribute, LOWER(ChangeTable.ChangeCaseInsensitiveAttribute)) ChangeTableToAccessAllAttributes.*').order('LOWER(ChangeTable.ChangeAttribute)') }<esc>/ChangeAttributes\\|ChangeTableToAccessAllAttributes\\|ChangeTable\\|ChangeAttribute\\|ChangeCaseInsensitiveAttribute<return>
  " App Models Scope Query
  nnoremap <silent> ,amsq ascope :query, ->(query) { where('ChangeTable.ChangeAttribute ILIKE :query', query: "%#{query}%") }<esc>/ChangeTable\\|ChangeAttribute<return>
" other active record tools
  " App Models WHere (full)
  nnoremap <silent> ,amwh awhere("CONCAT_WS(' ', ChangeTable.ChangeAttribute, ChangeTable.ChangeAttribute) ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute ILIKE :ChangeSequence OR ChangeTable.ChangeAttribute IN (:ChangeArray) OR ChangeTable.ChangeAttribute = :ChangeThis OR ChangeTable.ChangeAttribute IS NULL OR ChangeTable.ChangeAttribute IS NOT NULL", ChangeSequence: "%#{ChangeSequence}%", ChangeArray: ChangeArray, ChangeThis: ChangeThis)<esc>/ChangeTable\\|ChangeAttributereturn
  " App Models ORder
  nnoremap <silent> ,amor aorder(:ChangeAttribute)<esc>/ChangeAttribute<return>
  " App Models Order Descending
  nnoremap <silent> ,amod aorder(ChangeAttribute: :desc)<esc>/ChangeAttribute<return>
  " App Models Order Case insensitive
  nnoremap <silent> ,amoc aorder('LOWER(ChangeAttribute)')<esc>/ChangeAttribute<return>
  " App Models ORder (full)
  nnoremap <silent> ,amoR aorder("LOWER(ChangeAttribute) DESC")<esc>/ChangeAttribute<return>
  " App Models Concat with Separator
  nnoremap <silent> ,amcs aCONCAT_WS(' ', ChangeTable.ChangeAttribute, ChangeTable.ChangeAttribute)<esc>/ChangeTable\\|ChangeAttribute\\|ChangeAttribute<return>
  

" Attributes
  " App Models ATtribute
  nnoremap <silent> ,amat aattribute :ChangeAttribute, :ChangeDataTypeOrRemoveThisOption<esc>/ChangeAttribute\\|ChangeDataTypeOrRemoveThisOption<return>
  " App Models Attributes Enum
  nnoremap <silent> ,amae aenum ChangeAttribute: { 'ChangeDisplay': ChangeInteger }<return># DeleteThis - Notes regarding enums to display (for enums not to display, use ",amaE")<return>DeleteThis - typically used when selecting from a list and therefore there is a need to display the enum value<return>DeleteThis - when applying control flow use "for_database" and include comment identifying the display:<return><tab>DeleteThis - good - "if object.some_enum_for_database == 0 # some_display"<return>DeleteThis - bad - "if object.some_enum_some_display?"<return>DeleteThis - bad - "if object.some_enum == 'some_display'"<return><backspace>DeleteThis - the good example is both clear and allows us to change display whenever we want without breaking code elswhere<return>DeleteThis - the bad examples are clear but if the display is ever changed, the code will error<return>DeleteThis - NOTE: no need for "_prefix" option because "object.some_enum_some_display?" and similar methods will never be used with enum for display<return>DeleteThis - you can change the display order simply by reorganizing the hash (ex. 0 does not have to be first and none need to be sequential)<return>DeleteThis - Do not change the key / values pairs though - those should never change<esc>/ChangeAttribute\\|ChangeDisplay\\|ChangeInteger\\|DeleteThis<return>
  nnoremap <silent> ,amaE aenum ChangeAttribute: { ChangeIdentifier: ChangeInteger }, _prefix: true<return># DeleteThis - Notes regarding enums NOT to display (for enums to display, use ",amae")<return>DeleteThis - typically used to store some sort of status<return>DeleteThis - when applying control flow use methods generated by "_prefix: true" option<return><tab>DeleteThis - good - "if object.some_enum_some_identifier?"<return>DeleteThis - bad - "if object.some_enum == :some_identifier"<return>DeleteThis - bad - "if object.some_enum_for_database == 0 # some_identifier"<return><backspace>DeleteThis - the good example is the most clear and succinct<return>DeleteThis - the first bad is less succinct and the second bad is less clear and is more likely prone to human error by confusing the database number<return>DeleteThis - do not change identifiers after they have been set because that will break code elsewhere ("if object.some_enum_some_identifier?" will break)<return>DeleteThis - Do not change the key / values pairs - those should never change<esc>/ChangeAttribute\\|ChangeIdentifier\\|ChangeInteger\\|DeleteThis<return>
  " App Models attributes ARray
  nnoremap <silent> ,amaa aserialize :ChangeAttribute, Array
  " App Models attributes HAsh
  nnoremap <silent> ,amah aserialize :ChangeAttribute, Hash

" Callbacks
  " App Models Process Attributes
  nnoremap <silent> ,ampa abefore_validation :process_attributes<return># DeleteThis - move this to private section<return><backspace><backspace><esc><up>:call ReadTemplate('models/misc/process_attributes.rb')<return>/DeleteThis\\|ChangeAttribute\\|ChangeValue\\|ChangeIndedependentAttribute<return>
  " App Models Nil Parent on orphanable childrend
  nnoremap <silent> ,amnp abefore_destroy :nil_parent_id_on_orphanable_children<return># DeleteThis - move below method to private section<return><backspace><backspace>def nil_parent_id_on_orphanable_children<return># DeleteThis - make all children nil<return><backspace><backspace>ChangeChildren.update_all(ChangeForeignKey_id: nil)<return># DeleteThis - if this model can be the parent of one of it's parents (in a circular child / parent association), then remove the foreign key in the parent record<return><backspace><backspace>ChangeChild.update(ChangeForeignKey_id: nil) if ChangeParent.ChangeChildParent_id == id<return>end<esc>/DeleteThis\\|ChangeChildren\\|ChangeForeignKey\\|ChangeParent\\|ChangeChildParent<return>
" Validations
  " App Models Validates Options
  function! AppModelValidatesOptions()
    execute "normal! a,\<return># DeleteThis - if presence is validated elsewhere, make sure to allow_nil OR allow_blank so this isn't validating presence or erroring\<space>\<backspace>\<return>\<backspace>\<backspace>allow_nil: true,\<return>allow_blank: true"
    call AppModelValidatesOptionsLessNilAndBlank()
  endfunction
  function! AppModelValidatesOptionsLessNilAndBlank()
    execute "normal! a,\<return>if: ChangeMethodOrProcOrArray,\<return>unless: ChangeMethodOrProcOrArray"
  endfunction
  " App Models Validates Search
  function! AppModelsValidatesSearch()
    let @/ = 'ChangeAttributes\|ChangeAttribute\|ChangeValidation\|%<model>s %<attribute>s %<value>s\|ChangeMethodOrProcOrArray\|255ForStringOrSomeOtherLength\|ChangeThis\|ChangeRange\|DeleteThis\|ChangeAttachmentName\|ChangeMin\|ChangeMax\|ChangeSize\|ChangeByteType\|ChangeWidthInteger\|ChangeHeightInteger\|ChangeItems\|Changemessage\|ChangeLogic\|ChangeValue\|ChangeMessage\|ChangeRegex'
    normal! n
  endfunction
  function! AppModelsValidatesMessage()
    execute "normal! amessage: '%<model>s %<attribute>s %<value>s'\<return>\<space>\<backspace>"
  endfunction
  " App Models Validates Base
  nnoremap <silent> ,amvb avalidates :ChangeAttribute, ChangeValidation: {<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  function! AppModelsPresenceAbsenceNote()
    execute "normal! a# DeleteThis - for booleans, use exclusion or inclusion rather than presence or absence because presence and absence use \"blank?\" and false.blank? is true\<return>DeleteThis - NOTE: Also, in general booleans shouldn't use presence or absence but instead should have a default value set up in the migration file\<space>\<backspace>\<return>\<backspace>\<backspace>\<space>\<backspace>"
  endfunction
  " App Models Validates Presence
  nnoremap <silent> ,amvp :call AppModelsPresenceAbsenceNote()<return>avalidates :ChangeAttribute, presence: {<return>message: 'please add ChangeAttribute'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Absence
  nnoremap <silent> ,amva :call AppModelsPresenceAbsenceNote()<return>avalidates :ChangeAttribute, absence: {<return>message: 'please remove ChangeAttribute'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Length
  nnoremap <silent> ,amvl avalidates :ChangeAttribute, length: {<return>is: ChangeValue,<return>minimum: ChangeMin,<return>maximum: 255,<return>in: ChangeRange,<return>message: 'ChangeAttribute is too long (maximum is 255 characters)'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Uniqueness
  nnoremap <silent> ,amvu avalidates :ChangeAttribute, uniqueness: {<return>case_sensitive: false,<return>scope: %i[ChangeAttributes],<return>message: 'the ChangeAttribute "%<value>s" is already taken. Please choose a different ChangeAttribute'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Numericality
  nnoremap <silent> ,amvn avalidates :ChangeAttribute, numericality: {<return>only_integer: true,<return>allow_nil: true,<return>less_than: ChangeValue,<return>less_than_or_eqaul_to: ChangeValue,<return>equal_to: ChangeValue,<return>greater_than: ChangeValue,<return>greater_than_or_equal_to: ChangeValue,<return>other_than: ChangeValue,<return>odd: true,<return>even: true,<return>message: 'ChangeAttribute must be a number'<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Attachment
  nnoremap <silent> ,amvA a# DeleteThis - Active Storage Attachment Validations are only run if the attachment is attached so there is no need to include the "allow_blank: true" safety precaution<space><backspace><return>DeleteThis - the "attached" validation is effectively the same as the "presence" validation but attached is preferred because it is more intuitive when reading the codee (attached usees the "attached?" method and presence uses the "blank?" method but they work the same for active storage attachments. Just FYI)<return><backspace><backspace>validates :ChangeAttachmentName, attached: {<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptionsLessNilAndBlank()<return>$a<return><return>validates :ChangeAttachmentName, content_type: {<return>in: %w[image/jpeg image/gif image/png image/heic application/pdf],<return>message: 'ChangeAttachmentName must be a valid format. Valid formats are: jpeg, gif, png, heic, pdf',<return>in: %w[video/quicktime video/mp4 video/webm audio/ogg],<return>message: 'ChangeAttachmentName must be a valid image video format. Valid formats are:  mp4, mov, webm, ogg',<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptionsLessNilAndBlank()<return>$a<return><return>validates :ChangeAttachmentName, size: {<return># DeleteThis - Byte type an be "kilobytes", "megabytes" and probably others:<return><backspace><backspace> less_than: ChangeSize.ChangeByteType,<return>message: 'ChangeAttribute is too large (ChangeSize ChangeByteType max)',<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptionsLessNilAndBlank()<return>$a<return><return>validates :ChangeAttachmentName, dimension: {<return>width: { min: ChangeMin, max: ChangeMax },<return>height: { min: ChangeMin, max: ChangeMax },<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptionsLessNilAndBlank()<return>$a<return><return>validates :ChangeAttachmentName, aspect_ratio:<return># DeleteThis - Choose one:<return><backspace><backspace>:square<return>:portrate<return>:landscape<return>:is_16_9<return># DeleteThis - Or add a dynamic aspect ratio:<return><backspace><backspace>:is_ChangeWidthInteger_ChangeHeightInteger{<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptionsLessNilAndBlank()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Inclusion
  nnoremap <silent> ,amvi avalidates :ChangeAttribute, inclusion: {<return>in: [ChangeItems],<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Exclusion
  nnoremap <silent> ,amve avalidates :ChangeAttribute, exclusion: {<return>in: [ChangeItems],<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates Format
  nnoremap <silent> ,amvf avalidates :ChangeAttribute, format: {<return>with: ChangeRegex,<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validates eMail
  nnoremap <silent> ,amvm avalidates :ChangeAttribute, format: {<return>with: URI::MailTo::EMAIL_REGEXP,<return><space><backspace><esc>:call AppModelsValidatesMessage()<return>a}<esc>:call AppModelValidatesOptions()<return>:call AppModelsValidatesSearch()<return>
  " App Models Validate Custom
  nnoremap <silent> ,amvc :call AppModelsValidateCustom()<return>
  function! AppModelsValidateCustom()
    let attribute = input("what is the name of the attribute you are validating?: ")
    if attribute == ''
      let attribute = 'ChangeAttribute'
    endif
    let description = input("what is a description of the validation (snake case - this will be used to create method name): ")
    if description == ''
      let description = 'ChangeDescription'
    endif
    execute "normal! avalidate :" . attribute . "_" . description . "\<return># DeleteThis - move below to private section\<return>\<backspace>\<backspace>def " . attribute . "_" . description . "\<return># DeleteThis - insert guard clauses if needed ex. don't run validation if nil, etc.\<return>ChangeComment\<return>\<backspace>\<backspace>return unless " . attribute . "\<return># DeleteThis - insert validation logic\<return>ChangeComment\<return>\<backspace>\<backspace>return unless " . attribute . " == ChangeLogic\<esc>o\<esc>oerrors.add(:" . attribute . ", 'ChangeMessage')\<return>end"
    let @/ = "ChangeAttribute\\|ChangeDescription\\|DeleteThis\\|ChangeComment\\|ChangeLogic\\|ChangeMessage"
  endfunction
  " App Models Validates Each
  nnoremap <silent> ,amvE a# DeleteThis - make sure to add logic so that validation is not run if needed attributes are not present<return>DeleteThis - presence validations should test presence if precsence is needed<return><backspace><backspace>validates_each :ChangeAttribute do \|record, attr, value\|<return>record.errors.add(attr, 'ChangeMessage') if ChangeLogic<return>end<esc>:call AppModelsValidatesSearch()<return>
