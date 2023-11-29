class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def map
  end

  def badges
  end

  def leaderboard
  end
end
