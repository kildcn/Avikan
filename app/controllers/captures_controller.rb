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
        accept: "application/json",
      }
    )
    @bird_hash = JSON.parse(response.body)
  end

  def image_params
    params.require(:bird).permit(:photo)
  end


  # Faltaria por crear la clase bird_picture
  # class Bird < ApplicationRecord
  #   has_one_attached :photo
  # end
  

    # call the API

    # Parse the API answer 

    # Show error if it's not found

    # If the bird is found by the API, check if is already in 
    # our birds table

    # If it's not there create the the bird with the info we get

    # Save the bird 

    # Go to the waiting screen 1

    # Go to the waiting screen 2

    # Go to the success screen
end
