import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  }

  static targets = ["placeholder"]

  connect() {
    mapboxgl.accessToken = this.apiKeyValue
    console.log("hello");
    this.map = new mapboxgl.Map({
      container: this.element,
      style: "mapbox://styles/liankee/clpl9hsz800v901p9fuku3b4u"
    })

    this.selectedMarkerElement = null;
    this.addMarkers()
    this.fitBoundsToMarkers()
    this.addCurrentLocation()
     this.createBottomPanel()

    // Map click listener
    this.map.on('click', (e) => {
      // Close bottom panel and reset marker style if the click is not on a marker
      if (!this.isClickOnMarker(e)) {
        this.closeBottomPanel();
        if (this.selectedMarkerElement) {
          this.selectedMarkerElement.classList.remove('marker-black-and-white');
          this.selectedMarkerElement = null;
        }
      }
    });
  }

  addMarkers() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      customMarker.innerHTML = marker.marker_html
      customMarker.className = 'map-marker'; // Add a class for styling
      console.log(marker)

      const newMarker = new mapboxgl.Marker(customMarker)
        .setLngLat([marker.lng, marker.lat])
        .addTo(this.map)

      newMarker.getElement().addEventListener('click', (e) => {
        e.stopPropagation(); // Prevent map click event

        if (this.selectedMarkerElement === customMarker) {
          customMarker.classList.remove('marker-black-and-white');
          this.selectedMarkerElement = null;
          this.closeBottomPanel();
        } else {
          if (this.selectedMarkerElement) {
            this.selectedMarkerElement.classList.remove('marker-black-and-white');
          }
          customMarker.classList.add('marker-black-and-white');
          this.selectedMarkerElement = customMarker;
          this.updateBottomPanel(marker.info_window_html);
        }
      })
    })
  }

  fitBoundsToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([marker.lng, marker.lat]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  addCurrentLocation() {
    if (navigator.geolocation) {
      navigator.geolocation.getCurrentPosition(position => {
        const lng = position.coords.longitude
        const lat = position.coords.latitude
        new mapboxgl.Marker()
          .setLngLat([lng, lat])
          .addTo(this.map)
        this.map.flyTo({ center: [lng, lat], zoom: 15 })
      })
    }
  }

  createBottomPanel() {
    const bottomPanel = document.createElement("div")
    bottomPanel.id = "bottom-panel"
    bottomPanel.style.position = "absolute"
    bottomPanel.style.bottom = "0"
    bottomPanel.style.width = "100%"
    bottomPanel.style.backgroundColor = "transparent"
    bottomPanel.style.height = "200px"
    bottomPanel.style.zIndex = "1"
    bottomPanel.style.display = "none"
    // bottomPanel.style.backgroundImage =
    this.element.appendChild(bottomPanel)

    const closeButton = document.createElement("button")
    closeButton.textContent = "Close"
    closeButton.className = "close-button"
    closeButton.onclick = () => this.closeBottomPanel()
    bottomPanel.appendChild(closeButton)
  }

  updateBottomPanel(content) {
    const bottomPanel = document.getElementById("bottom-panel")
    bottomPanel.innerHTML = `<p>${content}</p>`

    const closeButton = document.createElement("button")
    closeButton.textContent = "Close"
    closeButton.className = "close-button"
    closeButton.onclick = () => this.closeBottomPanel()
    bottomPanel.appendChild(closeButton)

    bottomPanel.style.display = "block"
  }

  closeBottomPanel() {
    const bottomPanel = document.getElementById("bottom-panel")
    bottomPanel.style.display = "none"
    if (this.selectedMarkerElement) {
      this.selectedMarkerElement.classList.remove('marker-black-and-white');
      this.selectedMarkerElement = null;
    }
  }

  isClickOnMarker(e) {
    const features = this.map.queryRenderedFeatures(e.point, { layers: ['markers'] });
    return features.length > 0;
  }
}
