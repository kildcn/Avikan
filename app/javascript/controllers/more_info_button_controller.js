import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["extrainfo", "plusbutton"];
  connect() {
  }

  more() {
    this.extrainfoTarget.classList.toggle("d-none");
    const button = this.plusbuttonTarget;
    const buttonText = button.textContent.trim();

    if (buttonText === "+") {
      button.textContent = "-";
      this.additionalInfoTarget.classList.add("show");
      
    } else {
      button.textContent = "+";
      this.additionalInfoTarget.classList.remove("show");
    }
  }
}
