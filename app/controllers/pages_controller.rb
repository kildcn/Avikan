class PagesController < ApplicationController
  before_action :authenticate_user!, only: [:badges]
  before_action :set_user, only: [:badges]

  def home; end

  def map; end

  def badges
    @user = User.find(params[:id])
    @badges = @user.create_badges
  end

  def leaderboard
    @global_top_3 = User.order(user_xp: :desc).limit(3)
  end

  def error
    
  end

  private

  def set_user
    @user = params[:id] ? User.find(params[:id]) : current_user
  rescue ActiveRecord::RecordNotFound
    redirect_to root_path, alert: 'User not found'
  end
end
