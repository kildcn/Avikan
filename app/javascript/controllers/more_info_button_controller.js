import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["extrainfo", "plusbutton", "birdinfo"];
  connect() {
    console.log("yes,it is connected")
  }

  more() {
    this.extrainfoTarget.classList.toggle("d-none");
    const button = this.plusbuttonTarget;

    if (button.classList.contains("inactive")) {
      this.birdinfoTarget.classList.toggle("bird-card")
      this.extrainfoTarget.classList.add("show");
      button.classList.toggle("inactive");
      button.innerHTML = `<i class="fa-solid fa-minus" style="color: #fcca49;"></i>`;
      
    } else {
      this.birdinfoTarget.classList.toggle("bird-card")
      this.extrainfoTarget.classList.remove("show");
      button.classList.toggle("inactive");
      button.innerHTML = `<i class="fa-solid fa-plus" style="color: #fcca49;"></i>`;
    }
  }
}
