class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def map
  end

  def badges
  end

  def leaderboard
      @global_top_3 = User.order(user_xp: :desc).limit(3)
  end
end
