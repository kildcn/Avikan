import { Controller } from "@hotwired/stimulus"
import { CountUp } from 'countup.js';

// Connects to data-controller="counter"
export default class extends Controller {
  static values = {
    scoredpoints: Number,
    userpoints: Number
  }

  static targets = ["rewardpoints", "totalpoints"]

  connect() {

    const countUp = new CountUp(this.rewardpointsTarget, this.scoredpointsValue, { duration: 10});
    countUp.start();


    const countUpdeux = new CountUp(this.totalpointsTarget, this.userpointsValue, { duration: 5 });
    setTimeout(() => {

      countUpdeux.start();
    }, 2500);

  }
}
