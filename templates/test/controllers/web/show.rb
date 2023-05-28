test_web_auth :get, :ChangeRoute_path, :ChangeFactory,
              # DeleteThis - if controller action is not account specific,
              # add this:
              skip_account_auth: true,
              # DeleteThis - if controller action does not require special permissiosn,
              # add this:
              base_user_can_access: true
test '#show' do
  set_account_set_user_and_sign_in
  ChangeResource = create(:ChangeFactory, core_account: account)
  get ChangeRoute_path(account, ChangeResource)
  assert_response :success
  assert_template :show
end
