import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="search-birds"
export default class extends Controller {
  static values = {url: String }

  static targets = ["results"]
  connect() {
    console.log("it connects",this.urlValue,this.resultsTarget)
  }
  search(event) {
    let input= event.currentTarget[0].value
    const action_path = event.currentTarget.action
    const baseUrl = this.urlValue
    const final_endpoint = `${action_path}?query=${input}`
    
    console.log(final_endpoint)

    fetch(final_endpoint, {headers: {"Accept": "text/plain"}})
    .then(response => response.text())
    .then((data)=> {
      console.log(data)

      this.resultsTarget.innerHTML = data
    } )

  }
}
