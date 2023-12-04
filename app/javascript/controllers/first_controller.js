import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="first"
export default class extends Controller {
  static values = {
    capture: String,
    url: String,
  }

  static targets = ["pigeon", "scan", "owl", "golden"]

  connect(){
    console.log(this.captureValue, this.urlValue)
    this.revealBird()
  }

  revealBird(){
    // setTimeout(() => {
    //   this.scanTarget.classList.remove("d-none")
    //   this.scanTarget.classList.add("fadeIn")
    //   console.log("a")
    // }, 500);


      setTimeout(() => {
        this.pigeonTarget.classList.remove("d-none")
        this.pigeonTarget.classList.add("fadeIn")
        console.log("b")
      }, 2000);

      setTimeout(() => {
        this.pigeonTarget.classList.remove("fadeIn")
        this.pigeonTarget.classList.add("fadeOut")
        console.log("c")
      }, 4500);

    setTimeout(() => {
      this.owlTarget.classList.remove("d-none")
      this.owlTarget.classList.add("fadeIn")
      console.log("d")
    }, 5500);

    setTimeout(() => {
      this.owlTarget.classList.remove("fadeIn")
      this.owlTarget.classList.add("fadeOut")
      console.log("d")
    }, 7500);

    setTimeout(() => {
      this.goldenTarget.classList.remove("d-none")
      this.goldenTarget.classList.add("fadeIn")
      console.log("d")
    }, 8500);



    setTimeout(() => {
      window.location.replace(this.urlValue + "/" + "captures" + "/" + this.captureValue+"/"+"reward")
    }, 10500);

    //   setTimeout(() => {
    //     this.pigeonTarget.classList.add("fadeOut")
    //   }, 3500);

    // setTimeout(() => {
    //   this.owlTarget.classList.remove("d-none")
    //   this.owlTarget.classList.add("fadeIn")
    // }, 3500);

    // setTimeout(() => {
    //   this.owlTarget.classList.add("fadeOut")
    // }, 3500);


  }









}
