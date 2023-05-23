import { Controller } from "@hotwired/stimulus";
import consumer from "channels/consumer";

// Connects to data-controller="controller-kebab-case"
export default class extends Controller {
  connect() {
    this.createActionCableSubscription();
  }

  createActionCableSubscription() {
    return consumer.subscriptions.create("ControllerPascalCase", {
      connected() {
        // Called when the subscription is ready for use on the server
      },

      disconnected() {
        // Called when the subscription has been terminated by the server
      },

      received(data) {
        // Called when there's incoming data on the websocket for this channel
      },
    });
  }
}
