import { Controller } from "@hotwired/stimulus"
import Typed from 'typed.js';

// Connects to data-controller="typer"
export default class extends Controller {
  static targets = ["element"]

  connect() {
    var typed = new Typed(this.elementTarget, {
      strings: ['...', "Beak", "Feathers", "Size", "Colours", "Enviroment" ],
      typeSpeed: 100,
      showCursor: false,
      loop: true,
      smartBackspace: false,
      backSpeed: 50,
    });
  }
}
