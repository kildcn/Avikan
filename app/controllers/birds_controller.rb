class BirdsController < ApplicationController

  def index
    @birds = Bird.all
  end

  def show
    @bird = Bird.find(params[:id])
  end
end
