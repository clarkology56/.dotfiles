# DeleteThis - add "skip_account_auth: true" option if authorization is not account specific
# DeleteThis - add "base_user_can_access: true" if action can be accessed by base user
test_web_auth :get, :ChangeRoute_path, :ChangeFactory
test '#show' do
  set_account_set_user_and_sign_in
  ChangeResource = create(:ChangeFactory)
  get ChangePath(account, ChangeResource)
  assert_response :success
  assert_template :show
end

# DeleteThis - add "skip_account_auth: true" option if authorization is not account specific
# DeleteThis - add "base_user_can_access: true" if action can be accessed by base user
test_web_auth :get, :ChangeRoute_path, :ChangeFactory
test '#edit' do
  set_account_set_user_and_sign_in
  ChangeResource = create(:ChangeFactory)
  get ChangePath(account, ChangeResource)
  assert_response :success
  assert_template :edit
end

# DeleteThis - add "skip_account_auth: true" option if authorization is not account specific
# DeleteThis - add "base_user_can_access: true" if action can be accessed by base user
test_web_auth :patch, :ChangeRoute_path, :ChangeFactory
test '#update' do
  set_account_set_user_and_sign_in
  ChangeResource = create(:ChangeFactory)
  patch ChangePath(account, ChangeResource),
        params: { ChangeParam: { ChangeParam: ChangeParam } }
  assert_response :redirect
  assert_redirected_to ChangePath(account, ChangeResource)
  assert_equal ChangeResource, ChangeResource.reload.ChangeMethod
  assert_equal ChangeResource, ChangeResource.ChangeMethod
end

test '#update - invalid' do
  set_account_set_user_and_sign_in
  ChangeResource = create(:ChangeFactory)
  patch ChangePath(account, ChangeResource),
        params: { ChangeParam: { ChangeParam: ChangeParam } }
  assert_response 422
  assert_equal ChangeResource, ChangeResource.reload.ChangeMethod
  assert_equal ChangeResource, ChangeResource.ChangeMethod
end