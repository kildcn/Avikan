class CapturesController < ApplicationController

   def index
    if params[:query]
      @captures = Capture.global_capture_bird_search(params[:query]).where(user: current_user)
    else
      @captures = Capture.where(user: current_user)
    end
  end

  def show
    @capture = Capture.find(params[:id])
  end

  def new
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

    if @bird_hash["bird_detected"]

      @bird_scientific_name = @bird_hash["first_likely_bird_species"]["scientific_name"]
      @bird_from_db = Bird.find_by(scientific_name: @bird_scientific_name)

      unless @bird_from_db.nil?
        puts "bird is in our db"
        # The bird is in Birds table
        create_capture(@bird_hash)
        @new_capture.save
        redirect_to first_capture_path(@new_capture)
      else
        puts "bird has  be created"

        ## UPLOAD PIC TO CLOUDINARY TO GET THE KEY

        # we create a new bird in the bird table and a capture
        create_bird(@bird_hash)
        @new_bird.save
        create_capture(@new_bird)
        @new_capture.save
        redirect_to first_capture_path(@new_capture)
      end
    else
      # Show error if it's not found
      redirect_to error_path
    end
  end

  def search
    @captures = Capture.search(params[:keyword])
    render :index
  end

  def create_bird(bird)
    @new_bird = Bird.new(
      common_name: @bird_hash["first_likely_bird_species"]["common_name"] || ["barkpecker","quail-plover"," Andean tit-spinetail"].sample,
      scientific_name: @bird_scientific_name || ["daphoenositta chrysoptera","ortyxelos meiffrenii","leptasthenura andicola"].sample,
      description:@bird_hash["first_likely_bird_species"]["description"] || ["this bird is amazing","this bird flies, sometimes","It can sing! Pips!"].sample,
      habitat:@bird_hash["first_likely_bird_species"]["habitat"] || ["marsh", "coast", "forest"].sample,
      conservation_status:@bird_hash["first_likely_bird_species"]["conservation_status"]|| ["not endangered","protected","extinct"].sample,
      migrates:@bird_hash["first_likely_bird_species"]["migrates"] || ["true","false"].sample,
      experience_points:@bird_hash["first_likely_bird_species"]["experience_points"]|| 0..20.sample,
      common_location:@bird_hash["first_likely_bird_species"]["common_location"]|| ["north europe", "north america", "africa", "south america", "asia"].sample,
      bird_habitat_type:@bird_hash["first_likely_bird_species"]["bird_habitat_type"]  || ["marsh", "coast", "forest"].sample,
      bird_size:@bird_hash["first_likely_bird_species"]["bird_size"] || ["small", "medium", "big", "huge"].sample,
      diet:@bird_hash["first_likely_bird_species"]["diet"] || ["onmivore", "carnivore"].sample,
      max_velocity:@bird_hash["first_likely_bird_species"]["max_velocity"] ||  10..100.sample,
      rarity:@bird_hash["first_likely_bird_species"]["rarity"] || ["very common", "common", "medium rare", "very rare"].sample,
      sound_url:@bird_hash["first_likely_bird_species"]["sound_url"] || "bird_singing.mp3",
      weight:@bird_hash["first_likely_bird_species"]["weight"] || 0..10.sample ,
    )
  end

  def create_capture(bird)
      @new_capture = Capture.new
      @new_capture.bird_id = bird.id
      @new_capture.user_id = current_user.id
  end

  def reward
    @capture = Capture.find(params[:id])
    @captured_bird = @capture.bird
    total_points = @captured_bird.rarity * @captured_bird.experience_points
    @user = current_user
    current_user_points = @user.total_experience
    added_points = current_user_points += total_points
    #  chech how the entry is called an the data type
    @user.update(total_experience: added_point)
  end
end
