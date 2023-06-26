# DeleteThis - options are: append prepend before after replace (we don't use the update option)
# DeleteThis - see docs: https://turbo.hotwired.dev/reference/streams#the-seven-actions
# DeleteThis - to run in a background job, _later to broadcast_replace_to
def close_ChangeDescription_modal(ChangeArgs)
  broadcast_replace_to(
    # DeleteThis - resource is the main resource for show templates. Remove this for index templates
    # DeleteThis - resource is the main resource for show templates. Remove this for index templates
    current_user_stream_for(:ChangeTemplate, file: __FILE__, resource: ChangeResource),
    target: 'ChangeHmtlId', # or possibly dom_id(ChangeResource),
    partial: 'ChangePartialPath',
    # DeleteThis - add locals or remove this
    locals: {}
  )
end
