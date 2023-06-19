def update
  load_ChangeModel
  authorize! :ChangeAbility, @ChangeModel
  @ChangeModel.update(update_params) ? render_update : render_invalid_update
end

private

def render_update
  # ajax
  # [render add modal (so it closes first)]
  broadcast_flash_success 'Changethis updated'
  # [render index / intem / other]
  # [render modals for new item (ofent edit modal and / or destroy modal)]

  # turboframe
  broadcast_flash_success 'ChangeModelDisplay updated', skip_render: true
  redirect_to changethis_path(current_account, @changethis)
  # insert turbo methods as needed
end

def render_invalid_update
  # insert turbo methods
  # ajax
  broadcast_flash_danger @changethis
  broadcast_flash_danger @changethis,
                         target: "changethis-#{@changethis.id}-update-modal-flash"
  # turboframe
  # eventually we should be rendering the form with inlcine errors.. and then doing
  # skip render in teh flash below
  # flash
  broadcast_flash_danger @changethis
  broadcast_flash_danger @changethis,
                         target: "changethis-#{@changethis.id}-update-modal-flash"
end

def update_params
  params.require(:changethis).permit(:changethis)
end
