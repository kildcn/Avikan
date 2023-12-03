import { Controller } from "@hotwired/stimulus"


// Connects to data-controller="camera"
export default class extends Controller {
  static targets = ["preview", "tagwrapper", "formcenter", "aim", "detect", "actionbutton"]

  connect() {
    console.log(this.previewTarget)
    console.log(this.actionbuttonTarget)
  }

  readURL(e){
    const imageFile = e.currentTarget.files[0]

    this.previewTarget.setAttribute("src", window.URL.createObjectURL(imageFile));
    this.tagwrapperTarget.classList.add("d-none")
    e.currentTarget.classList.add("d-none")
    this.previewTarget.classList.remove("d-none")
    this.detectTarget.classList.add("fadeIn")
    this.detectTarget.innerText = "・・ Target Spotted ・・"
    this.actionbuttonTarget.value= "Upload"
    this.aimTarget.after(this.previewTarget)
    // reader.addEventListener("load", function () {
    //   var image = new Image();
    //   image.width = 100;
    //   image.title = input.name;
    //   image.src = this.result;
    //   imagePreviewContainer.appendChild(image);
    // }, false);

  }
}
