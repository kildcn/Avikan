import { Controller } from "@hotwired/stimulus"
import { CountUp } from 'countup.js';

// Connects to data-controller="counter"
export default class extends Controller {
  static values = {
    total: Number,
    userpoints: Number
  }

  static targets = ["totalpoints"]

  connect() {
    console.log(this.totalValue, this.userpointsValue)
    const countUp = new CountUp(this.totalpointsTarget, 5234);
    countUp.start();
  }
}
