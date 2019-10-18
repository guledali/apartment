import { Controller } from "stimulus"

export default class extends Controller {
  static targets = [ "modal" ]



    displayModal() {
        this.modalTarget.style.display = "block"
  }



    closeModal() {
        this.modalTarget.style.display = "none"
    }
}

