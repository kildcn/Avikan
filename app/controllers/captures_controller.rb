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
    # Saving the response in a hash and transforming the keys to symbols
    @bird_hash = JSON.parse(response.body)
    #.transform_keys{ |key| key.to_sym }
    if @bird_hash["bird_detected"]

      @bird_scientific_name = @bird_hash["first_likely_bird_species"]["scientific_name"] 
      @bird_from_db = Bird.find_by(scientific_name: @bird_scientific_name)
      
      unless @bird_from_db.nil?
        puts "bird is in our db"
        # If this is true, the bird is already in our Birds table and we
        # only create a capture
        create_capture(@bird_hash)
        @new_capture.save
        redirect_to capture_path(@new_capture)
      else
        puts "bird has  be created"

        ## UPLOAD PIC TO CLOUDINARY TO GET THE KEY

        # we create a new bird in the bird table
        create_bird(@bird_hash)
        @new_bird.save
        # we create a new capture
        create_capture(@new_bird)
        @new_capture.save
        # this needs to go to the analysing page :first?
        redirect_to first_capture_path(@new_capture)
      end
    else
      # Show error if it's not found
      redirect_to error_path
    end

    # Now we have to do the loading pages trick
    redirect_to capture_path(@new_capture)
  end

  def create_bird(bird)
        @new_bird = Bird.new(
          common_name: @bird_hash["first_likely_bird_species"]["common_name"],
          scientific_name: @bird_scientific_name,
          description:@bird_hash["first_likely_bird_species"]["description"],
          habitat:@bird_hash["first_likely_bird_species"]["habitat"],
          conservation_status:@bird_hash["first_likely_bird_species"]["conservation_status"],
          migrates:@bird_hash["first_likely_bird_species"]["migrates"],
          experience_points:@bird_hash["first_likely_bird_species"]["experience_points"],
          common_location:@bird_hash["first_likely_bird_species"]["common_location"],
          bird_habitat_type:@bird_hash["first_likely_bird_species"]["bird_habitat_type"],
          bird_size:@bird_hash["first_likely_bird_species"]["bird_size"],
          diet:@bird_hash["first_likely_bird_species"]["diet"],
          max_velocity:@bird_hash["first_likely_bird_species"]["max_velocity"],
          rarity:@bird_hash["first_likely_bird_species"]["rarity"],
          sound_url:@bird_hash["first_likely_bird_species"]["sound_url"],
          weight:@bird_hash["first_likely_bird_species"]["weight"],
        )
  end

  def create_capture(bird)
      @new_capture = Capture.new
      @new_capture.bird_id = bird.id
      @new_capture.user_id = current_user.id
  end
  # def image_params
  #   params.require(:capture).permit(:photo)
  # end

    # If the bird is found by the API, check if is already in 
    # our birds table

    # If it's not there create the the bird with the info we get

    # Save the bird 

    # Go to the waiting screen 1

    # Go to the waiting screen 2

    # Go to the success screen
    def first_capture

    end
end
