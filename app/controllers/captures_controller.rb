class CapturesController < ApplicationController
  # skip_before_action :verify_authenticity_token, only: [:index]

  def index
    if params[:query].present?
      # @captures = Capture.where(user: current_user)
      @captures = Capture.global_capture_bird_search(params[:query]).where(user: current_user)
    else
      @captures = Capture.where(user: current_user)
    end

    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "captures/list", locals: {captures: @captures}, formats: [:html] }
    end
  end

  def show
    @capture = Capture.find(params[:id])
    @captured_bird = @capture.bird
  end

  def new
    @new_capture = Capture.new
  end

  def create
    @image = params[:capture][:image]

    endpoint = "http://164.68.99.217:8000/upload_image"

    response = HTTParty.post(
      endpoint,
      body: {
        img:  File.open(@image),
        type: 'image/png'
      },
      headers: {
        accept: "application/json"
      })
    @bird_hash = JSON.parse(response.body)



    if @bird_hash["bird_detected"]

      @bird_scientific_name = @bird_hash["first_likely_bird_species"]["scientific_name"]
      @bird_from_db = Bird.find_by(scientific_name: @bird_scientific_name)

      unless @bird_from_db.nil?
        # The bird is in Birds table
        create_capture(@bird_from_db)
        @spot = Spot.new
        @spot.user = current_user
        @spot.bird = @bird_from_db
        @spot.address = ["Rudi Dutschke Str. 26, 10969 Berlin", "Cologne Cathedral, Domkloster, Cologne", "Brandenburg Gate, Pariser Platz, Berlin",
          "Reichstag Building, Platz der Republik, Berlin", "Miniatur Wunderland, Kehrwieder, Hamburg"].sample
        @spot.save
        @new_capture.save notice: "match"
        redirect_to first_capture_path(@new_capture)
      else
        # The bird is not in the birds table
        @new_bird = create_bird(@bird_hash)
        file = URI.open(@image)
        @new_bird.photo.attach(io: file, filename: "#{@bird_hash["first_likely_bird_species"]["common_name"]}.png", content_type: "image/png")
        @new_bird.save
        @spot = Spot.new
        @spot.user = current_user
        @spot.bird = @new_bird
        @spot.address =["Rudi Dutschke Str. 26, 10969 Berlin", "Cologne Cathedral, Domkloster, Cologne", "Brandenburg Gate, Pariser Platz, Berlin",
          "Reichstag Building, Platz der Republik, Berlin", "Miniatur Wunderland, Kehrwieder, Hamburg"].sample
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
      weight:@bird_hash["first_likely_bird_species"]["weight"] || rand(2..2500)
    )
  end

  def create_capture(bird)
    current_user.user_xp = 0
    @new_capture = Capture.new
    @new_capture.bird_id = bird.id
    @new_capture.user_id = current_user.id
  end

  def reward
    @total_points = 0
    @capture = Capture.find(params[:id])
    @captured_bird = @capture.bird
    @total_points = @captured_bird.rarity.to_i * @captured_bird.experience_points
    @user = current_user
    @user.user_xp = 0
    @current_user_points = @user.user_xp
    added_points = @current_user_points += @total_points
    @user.update(user_xp: added_points)
  end

  def article_params
    params.require(:capture).permit(:photo)
  end
end
