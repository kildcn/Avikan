class CapturesController < ApplicationController

  def show
    @captures = Capture.all
  end

  def new
    # creates a new instance of the a capture
    @new_capture = Capture.new
  end

  def create
    @image = params[:capture][:image]
    endpoint = "http://164.68.99.217:8000/upload_image"

    response =  HTTParty.post(endpoint, body: {
      img:  File.open(@image),
      type: 'image/png'
      },
      headers: {
        accept: "application/json"
      }
    )
    @bird_hash = JSON.parse(response.body)

    if @bird_hash.bird_detected
      if Bird.where(@bird_hash.first_likely_bird_species, @scientific_name)
        # if this is true, the bird is already in our Birds table and we
        # Only create a capture
        @new_capture = Capture.new ()
      else
        # we create a new bird in the bird table
        @new_bird = Bird.new()
      end

    else
      # Show error if it's not found
  
    end



  end

  # def image_params
  #   params.require(:capture).permit(:photo)
  # end


    # Show error if it's not found

    # If the bird is found by the API, check if is already in 
    # our birds table

    # If it's not there create the the bird with the info we get

    # Save the bird 

    # Go to the waiting screen 1

    # Go to the waiting screen 2

    # Go to the success screen
end
