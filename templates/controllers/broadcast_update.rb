def update
  load_ChangeModel
  # DeleteThis - use this for grouped permissions
  authorize! :ChangeAbility, @ChangeModel
  # DeleteThis - use this for granular controller action permissions
  authorize_controller_action! @ChangeModel
  @ChangeModel.update(update_params) ? render_update : render_invalid_update
end

private

def render_update
  # DeleteThis - If coming from a modal, re-render it first, which will
  #              close the modal. It's important to render first otherwise
  #              it looks bad for the page to start changing before the
  #              modal is closed
  render_edit_modal
  broadcast_flash_success 'ChangeModelDisplay updated'
  # DeleteThis - render other items as needed.
  # DeleteThis - remember to re-render any other modals associated
  #              because modals are rendered from the bottom of the
  #              template so rendering the "user partial" for example
  #              will not make any updats the the "delete user modal".
end

def render_invalid_update
  # DeleteThis - if not coming from modal
  broadcast_flash_danger @ChangeModel
  # DeleteThis - if coming from modal
  broadcast_flash_danger @ChangeModel,
                         target: "ChangeModel-#{@ChangeModel.id}-update-modal-flash"
  # DeleteThis - render other items as needed.
end

def update_params
  params.require(:changethis).permit(:changethis)
end
