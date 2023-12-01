class SpotsController < ApplicationController
  def index
    if params[:view] == 'my_spots'
    # Show only the spots belonging to the current user
    @spots = Spot.where(user_id: current_user.id)
  else
    @spots = Spot.all
  end
    # The `geocoded` scope filters only flats with coordinates
    @markers = @spots.geocoded.map do |spot|
      {
        lat: spot.latitude,
        lng: spot.longitude,
        info_window_html: render_to_string(partial: "info_window", locals: {spots: spot}),
        marker_html: render_to_string(partial: "marker")
      }
    end
  end
end
