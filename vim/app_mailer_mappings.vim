" Ruby Mailers
  " Ruby Mailers BAse
  nnoremap <silent> ,aMba :read ../../templates/mailers/base.rb<return>/@to_user\\|ChangeObject\\|ChangeModel\\|ChangeId\\|ChangeVariable\\|ChangeOption\\|DeleteThis\\|ChangeGuardLogic\\|ChangeToEmail\\|ChangeFromEmail\\|ChangeSubject<return>
  " Ruby Mailers Html Email
  nnoremap <silent> ,aMhe :read ../templates/mailers/html_email.html.erb<return>ggdd/DeleteThis\\|ChangeUrl\\|ChangeEmail<return>
  " Ruby Mailers Deliver Later
  nnoremap <silent> ,aMdl aChangeMailerMailer.ChangeEmail_email(ChangeArgs).deliver_later<esc>/ChangeMailer\\|ChangeEmail\\|ChangeArgs<return>
