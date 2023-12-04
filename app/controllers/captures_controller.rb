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

    # endpoint = "http://164.68.99.217:8000/upload_image"

    # response = HTTParty.post(
    #   endpoint,
    #   body: {
    #     img:  File.open(@image),
    #     type: 'image/png'
    #   },
    #   headers: {
    #     accept: "application/json"

    #   })
    # @bird_hash = JSON.parse(response.body)

    @bird_hash = {
  "status"=> "ok",
  "bird_detected"=> true,
  "timestamp"=> "2023-12-01_15-13-41",
  "first_likely_bird_species"=> {
    "species_no"=> 8787,
    "scientific_name"=> "parotia sefilata",
    "probability"=> "0.82",
    "description"=> "The western or Arfak parotia (Parotia sefilata) is a medium-sized, approximately 33 cm long, bird-of-paradise with a medium-length tail.",
    "common_name"=> "Western Parotia",
    "size"=> 332.2,
    "size_category"=> "Medium",
    "mass"=> 181.72,
    "habitat"=> "Forest",
    "habitat_category"=> "Dense habitats",
    "migration"=> 1,
    "trophic_level_feeding_habits"=> "Omnivore",
    "min_latitude"=> -2.89,
    "max_latitude"=> -0.43,
    "centroid_latitude"=> -1.1,
    "centroid_longitude"=> 133.41,
    "range_size"=> 7209.38,
    "species_status"=> "Not Evaluated",
    "status"=> "ENRICHED"
  },
  "second_likely_bird_species"=> {
    "species_no"=> 1567,
    "scientific_name"=> "sinosuthora przewalskii",
    "probability"=> "0.66",
    "description"=> "Przevalski's parrotbill (Suthora przewalskii) or the rusty-throated parrotbill, is a species of parrotbill in the family Paradoxornithidae. It is endemic to a small area of central China. Its natural habitat is temperate forests. It is threatened by habitat loss.",
    "common_name"=> "Przevalski's Parrotbill",
    "size"=> 143.8,
    "size_category"=> "Medium",
    "mass"=> 8.5,
    "habitat"=> "Forest",
    "habitat_category"=> "Semi-open habitats",
    "migration"=> 1,
    "trophic_level_feeding_habits"=> "Omnivore",
    "min_latitude"=> 32.37,
    "max_latitude"=> 34.81,
    "centroid_latitude"=> 33.68,
    "centroid_longitude"=> 104.41,
    "range_size"=> 32728.45,
    "species_status"=> "Least Concern",
    "status"=> "ENRICHED"
  },
  "third_likely_bird_species"=> {
    "species_no"=> 7997,
    "scientific_name"=> "eutoxeres aquila",
    "probability"=> "0.01",
    "description"=> "The white-tipped sicklebill (Eutoxeres aquila) is a species of hummingbird in the family Trochilidae. It is found in Colombia, Costa Rica, Ecuador, Panama, Peru, and Venezuela.[3][4]",
    "common_name"=> "White-tipped Sicklebill",
    "size"=> 131.3,
    "size_category"=> "Small",
    "mass"=> 10.6,
    "habitat"=> "Forest",
    "habitat_category"=> "Dense habitats",
    "migration"=> 1,
    "trophic_level_feeding_habits"=> "Herbivore",
    "min_latitude"=> -8.52,
    "max_latitude"=> 10.74,
    "centroid_latitude"=> 1.91,
    "centroid_longitude"=> -77.73,
    "range_size"=> 306610.24,
    "species_status"=> "Not Evaluated",
    "status"=> "ENRICHED"
  }
}

    if @bird_hash["bird_detected"]

      @bird_scientific_name = @bird_hash["first_likely_bird_species"]["scientific_name"]
      @bird_from_db = Bird.find_by(scientific_name: @bird_scientific_name)

      unless @bird_from_db.nil?
        # The bird is in Birds table
        puts "Bird is in birds table"
        create_capture(@bird_from_db)
        @spot = Spot.new
        @spot.user = current_user
        @spot.bird = @bird_from_db
        @spot.address = "Rudi Dutschke Str. 26, 10969 Berlin"
        @spot.save
        @new_capture.save notice: "match"
        redirect_to first_capture_path(@new_capture)
      else
        # The bird is not in the birds table
        puts "Bird is not in birds table"
        @new_bird = create_bird(@bird_hash)
        file = URI.open(@image)
        @new_bird.photo.attach(io: file, filename: "#{@bird_hash["first_likely_bird_species"]["common_name"]}.png", content_type: "image/png")
        @new_bird.save
        @spot = Spot.new
        @spot.user = current_user
        @spot.bird = @new_bird
        @spot.address = "Rudi Dutschke Str. 26, 10969 Berlin"
        @spot.save
        create_capture(@new_bird)
        @new_capture.save
        redirect_to first_capture_path(@new_capture)
      end
    else
      # Show error if it's not found
      redirect_to error_path
    end
  end

  def first
    @capture = Capture.find(params[:id])
    @captured_bird = @capture.bird

  end

  def search
    @captures = Capture.search(params[:keyword])
    render :index
  end

  def create_bird(bird)
    Bird.new(
      common_name: @bird_hash["first_likely_bird_species"]["common_name"] || ["barkpecker","quail-plover"," Andean tit-spinetail"].sample,
      scientific_name: @bird_scientific_name || ["daphoenositta chrysoptera","ortyxelos meiffrenii","leptasthenura andicola"].sample,
      description:@bird_hash["first_likely_bird_species"]["description"] || ["this bird is amazing","this bird flies, sometimes","It can sing! Pips!"].sample,
      habitat:@bird_hash["first_likely_bird_species"]["habitat"] || ["marsh", "coast", "forest"].sample,
      conservation_status:@bird_hash["first_likely_bird_species"]["conservation_status"]|| ["not endangered","protected","extinct"].sample,
      migrates:@bird_hash["first_likely_bird_species"]["migrates"] || ["true","false"].sample,
      experience_points:@bird_hash["first_likely_bird_species"]["experience_points"]|| rand(0..20),
      common_location:@bird_hash["first_likely_bird_species"]["common_location"]|| ["north europe", "north america", "africa", "south america", "asia"].sample,
      bird_habitat_type:@bird_hash["first_likely_bird_species"]["bird_habitat_type"]  || ["marsh", "coast", "forest"].sample,
      bird_size:@bird_hash["first_likely_bird_species"]["bird_size"] || ["small", "medium", "big", "huge"].sample,
      diet:@bird_hash["first_likely_bird_species"]["diet"] || ["onmivore", "carnivore"].sample,
      max_velocity:@bird_hash["first_likely_bird_species"]["max_velocity"] || rand(10..100),
      rarity:@bird_hash["first_likely_bird_species"]["rarity"] || rand(1..5),
      sound_url:@bird_hash["first_likely_bird_species"]["sound_url"] || "bird_singing.mp3",
      weight:@bird_hash["first_likely_bird_species"]["weight"] || rand(0..10)
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

    # total_points = @captured_bird.rarity * @captured_bird.experience_points
    # @user = current_user
    # current_user_points = @user.user_xp
    # added_points = current_user_points += total_points
    # @user.update(user_xp: added_points)
  end

  def article_params
    params.require(:capture).permit(:photo)
  end
end
