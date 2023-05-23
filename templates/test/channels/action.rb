test '#some_action' do
  perform(:some_action, { param1: 'value1', param2: 'value2' })

  assert_broadcast_on('channel_name', { key: 'value' })
  assert_response :success
end
