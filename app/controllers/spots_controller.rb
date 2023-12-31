class SpotsController < ApplicationController

  def index

    @is_my_spots = params[:view] == 'my_spots'
    if @is_my_spots
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
        marker_html: render_to_string(partial: "marker"),
        # blob:  Rails.application.rails_blob_url(spot.bird.photo)
      }
    end
  end
end
