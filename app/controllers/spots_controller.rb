class SpotsController < ApplicationController
  def index
    @spots = Spot.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {spots: spot})
      }
    end
  end
end
