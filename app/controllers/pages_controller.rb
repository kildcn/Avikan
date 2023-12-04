class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def map
  end

  def badges
    @user = User.find(params[:id])
    raise
  end

  def user_badges
    @user = User.find(params[:id])

  end

  def leaderboard
      @global_top_5 = User.order(user_xp: :desc).limit(5)
  end
end
