" ruby basics
  " Ruby Basic Frozen String
  nnoremap <silent> ,rbfs a# frozen_string_literal: true
  " Ruby Basic CLass
  nnoremap <silent> ,rbcl :call CreateBaseFile(1, 0, 0)<return>
  " Ruby Basic MOdule
  nnoremap <silent> ,rbmo :call CreateBaseFile(0, 0, 0)<return>
  " Ruby Basic Concern
  nnoremap <silent> ,rbco :call CreateBaseFile(0, 0, 1)<return>/inner_followup<return>cgnextend ActiveSupport::Concern<esc>
  " Ruby Basic Code Challenge
  nnoremap <silent> ,rbcc a# frozen_string_literal: true<return><backspace><backspace><return>Dir['./app/**/*.rb'].each do \|file\|<return>require file<return>end<esc>
  " Ruby Basic IF
  nnoremap <silent> ,rbif aif ChangeThisPls<return>end<esc>/ChangeThisPls<return>
  " Ruby Basic IF inline
  nnoremap <silent> ,rbiF aChangeThisPls if ChangeThisPls<esc>/ChangeThisPls<return>
  " Ruby Basic If Else
  nnoremap <silent> ,rbie aif ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
  " Ruby Basic If Else if else
  nnoremap <silent> ,rbiE aif ChangeThisPls<return>elsif ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
  " Ruby Basic Unless
  nnoremap <silent> ,rbun aunless ChangeThisPls<return>end<esc>/ChangeThisPls<return>
  " Ruby Basic Unless
  nnoremap <silent> ,rbuN aChangeThisPls unless ChangeThisPls<esc>/ChangeThisPls<return>
  " Ruby Basic CAse
  nnoremap <silent> ,rbca acase ChangeThisPls<return>when ChangeThisPls<return>else<return>end<esc>/ChangeThisPls<return>
  " Ruby Basic Hash Lookup
  nnoremap <silent> ,rbhl alookup_hash = {<return>ChangeKey: ChangeValue,<return>ChangeKey: ChangeValue<return>}<return>lookup_hash[ChangeVariarble]<return># DeleteThis - you may need to add ".to_sym" to variable<esc>/ChangeKey\\|ChangeValue\\|ChangeVariarble\\|DeleteThis<return>
  " Ruby Basic TErnary
  nnoremap <silent> ,rbte aChangeBoolean ? ChangeTrueResult : ChangeFalseResult<esc>/ChangeBoolean\\|ChangeTrueResult\\|ChangeFalseResult<return>
  " Ruby Basic Puts Debugger
  nnoremap <silent> ,rbpd aputs 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts 'WWWWWWWWWWWWWWWWWWWWWWWWWWWW'<return>puts nil<return>puts 'ChangeLabel:'<return>puts ChangeThisPls<esc>/ChangeLabel\\|ChangeThisPls<return>
  " Ruby Basic puts Json pretty Generate
  nnoremap <silent> ,rbjg aputs JSON.pretty_generate(ChangeHash)<esc>/ChangeHash<return>
  " Ruby Basic puts Json pretty Generate
  nnoremap <silent> ,rbjp aJSON.parse(ChangeNonHash)<esc>/ChangeNonHash<return>

  nnoremap <silent> ,rbde a# ChangeDescription<return><backspace><backspace>def ChangeMethod<return>end<esc>/ChangeDescription\\|ChangeMethod<return>
  " Ruby Basic Attach File
  nnoremap <silent> ,rbaf aattach(io: File.open(Rails.root.join(ChangePath)), filename: 'ChangeFileName', content_type: 'ChangeContentType')<return># DeleteThis - common file types: application/pdf, image/jpeg, image/gif, image/png, video/quicktime, video/mp4, video/webm, audio/ogg<esc>/ChangePath\\|ChangeFileName\\|ChangeContentType<return>
  " Ruby Basic Cancancan Model based
  nnoremap <silent> ,rbcm acan?(:ChangeAbility, @ChangeObject)<esc>/ChangeAbility\\|ChangeObject<return>
  " Ruby Basic Cancancan Non-mmodel Model based (granular / controller action specific)
  nnoremap <silent> ,rbcn acan?(:ChangeAbility, :ChangeControllerOrFeature)<esc>/ChangeAbility\\|ChangeControllerOrFeature<return>
  " Ruby Basic Interpolated String
  nnoremap <silent> ,rbis a#{}<esc>i

  " Ruby Basic Dir
  nnoremap <silent> ,rbdi a# DeleteThisNote: ** searches all subfolders; *.ChangeExtension searches all file names wit that extension; the final * makes sure to include erb files<return><backspace><backspace>Dir[Rails.root.join('app', 'ChangePath', '**', '*.ChangeExtension')].each do \|path\|<return># DeleteThisNote: add logic here...<return>DeleteThisNote: use this to clean file name: path.remove(Rails.root.join('app', 'ChangePath')).split('<delete>.ChangeExtension').first<return><backspace><backspace>end<esc>/DeleteThisNote\\|ChangePath\\|ChangeExtension<return>
  " Ruby basic Rails Root
  nnoremap <silent> ,rbrr aRails.root.join('ChangeThis', 'ChangeThis', 'Etc.')<esc>/ChangeThis\\|Etc.<return>
  " Ruby Basic BEgin
  nnoremap <silent> ,rbbe arescue StandardError => e<return># DeleteThis - some exception handling<return><backspace><backspace>else<return># DeleteThis - add logic to run only when no errors occur<return><backspace><backspace>ensure<return># DeleteThis - add logic to run whether there are error or not<esc>/DeleteThis<return>
  " Ruby Basic BEgin (full)
  nnoremap <silent> ,rbbE abegin<return># DeleteThis - have code that could possibly error<return><backspace><backspace>rescue StandardError => e<return># DeleteThis - some exception handling<return><backspace><backspace>else<return># DeleteThis - add logic to run only when no errors occur<return><backspace><backspace>ensure<return># DeleteThis - add logic to run whether there are error or not<return><backspace><backspace>end<esc>/DeleteThis<return>
  " Ruby Basic String from Time
  nnoremap <silent> ,rbst astrftime('%A, %B %-d, %Y')<return># DeleteThis - %A gets day spelled out - "Sunday"; %a gets day spelled out abbreviated - "Sun"<return>DeleteThis - %B gets month spelled out - "January"; %b gets month spelled out abbreviated - "Jan"<return>DeleteThis - %d gets day of month (ex 01-31); %-d gets day of month with blank instead of 0 padding (ex 1-31)<return>DeleteThis - %Y gets full year - 2021; %y gets last 2 digits of year - 21<return>DeleteThis - see here for more https://apidock.com/ruby/DateTime/strftime<return><esc>/%A, %B %-d, %Y\\|DeleteThis<return>

" Ruby Block
  " b = block
  " a = block alternate (mostly for multi line lambdas used as method
  " arguments
  " o = inline
  " x = shorthand
  function! RubyBlockBlockInsertMode()
    execute "normal! ado \|\|\<return>end\<esc>\<up>$"
  endfunction
  " Ruby Block Each
  inoremap <silent> eachb each <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> eacho each { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> eachx each(&:)<left>
  " Ruby Block Each With index
  inoremap <silent> eachwb each_with_index do \|, index\|<return>end<esc><up>$7<left>i
  inoremap <silent> eachwo each_with_index { \|, index\| ChangeLogic }<esc>/ChangeLogic<return>9<left>i
  " Ruby Block Times
  inoremap <silent> timesb times do \|index\|<return>end<esc>O
  inoremap <silent> timeso times { \|index\| ChangeLogic }<esc>/ChangeLogic<return>
  " Ruby Block While
  inoremap <silent> whileb while <return>end<esc><up>A
  " Ruby Block Until
  inoremap <silent> untilb until <return>end<esc><up>A
  " Ruby Block Until
  inoremap <silent> loopb loop do<return>ChangeLogic<return>break if ChangeConditional<return>end<esc>/ChangeLogic\\|ChangeConditional<return>
  " Ruby Block Map
  inoremap <silent> mapb map <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> mapo map { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> mapx map(&:)<left>
  " Ruby Block Select
  inoremap <silent> selectb select <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> selecto select { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> selectx select(&:)<left>
  " Ruby Block Reject
  inoremap <silent> rejectb reject <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> rejecto reject { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> rejectx reject(&:)<left>
  " Ruby Block Sort
  inoremap <silent> sortb sort do \|a, b\|<return>a.ChangeLogic <=> b.ChangeLogic<return>end<esc>/ChangeLogic<return>cgn
  inoremap <silent> sorto sort { \|a, b\| a.ChangeLogic <=> b.ChangeLogic }<esc>/ChangeLogic<return>cgn
  " Ruby Block Lambda
  inoremap <silent> lambdab lambda <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> lambdaa lambda { \|\|<return>}<esc><up>$i
  inoremap <silent> lambdao ->() { ChangeLogic }<esc>/ChangeLogic<return>4<left>i
  inoremap <silent> lambdax lambda(&:ChangeMethod)<esc>/ChangeMethod<return>
  " Ruby Block Proc
  inoremap <silent> procb proc <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> proca proc { \|\|<return>}<esc><up>$i
  inoremap <silent> proco proc { \|\| ChangeLogic }<esc>/ChangeLogic<return>2<left>i
  inoremap <silent> procx proc(&:ChangeMethod)<esc>/ChangeMethod<return>
  " Ruby Block Sort By
  inoremap <silent> sort_byb sort_by <esc>:call RubyBlockBlockInsertMode()<return>i
  inoremap <silent> sort_byo sort_by { \|ChangeObject\| ChangeObjedt.ChangeLogic }<esc>/ChangeObject\\|ChangeLogic<return><esc>n
  inoremap <silent> sort_byx sort_by(&:ChangeMethod)<esc>/ChangeMethod<return>
