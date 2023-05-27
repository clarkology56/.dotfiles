test_web_auth :get, :change_path, :changefactory,
              # DeleteThis - if controller action is not account specific,
              # add this:
              skip_account_auth: true,
              # DeleteThis - if controller action does not require special permissiosn,
              # add this:
              base_user_can_access: true
test '#show' do
  set_account_set_user_and_sign_in
  changethis = create(:chagenthis, core_account: account)
  get changethis_path(account, changethis)
  assert_response :success
  assert_template :show
end
