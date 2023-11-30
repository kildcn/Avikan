class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  def map
  end

  def badges
  end

  def leaderboard
    # User.all.order_by(:username)
    # User.all.order(:username)
    # User.all.order(:username).first(2)

    @top_users = User.order(user_xp: :desc).limit(3)
  end
end
