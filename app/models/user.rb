class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable

  def self.available_badges
    [
      { name: "David Attenborough", unlocked: true, badge_img: "URL" },
      { name: "Tiny Bird", unlocked: true, badge_img: "URL" }
    ]
  end

  def create_badges
    user_xp = self.user_xp
    if self.user_xp >= 1500
      [
        { xp_threshold: 100, name: "Novice Birdwatcher 🦜", badge_img: "badges/first.png" },
        { xp_threshold: 200, name: "Feathered Enthusiast!", badge_img: "badges/first.png" },
        { xp_threshold: 300, name: "Avian Collector",badge_img: "badges/first.png" },
        { xp_threshold: 500, name: "Ornithology Master", badge_img: "badges/first.png" },
        { xp_threshold: 1000, name: "Feathered Aficionado!", badge_img: "badges/first.png" },
        { xp_threshold: 2000, name: "Bird Expert", badge_img: "badges/first.png" },
      ]
    elsif self.user_xp >= 1200
      [
        { xp_threshold: 100, name: "Novice Birdwatcher 🦜", badge_img: "badges/first.png" },
        { xp_threshold: 200, name: "Feathered Enthusiast!", badge_img: "URL" },
        { xp_threshold: 300, name: "Avian Collector", badge_img: "URL" },
        { xp_threshold: 500, name: "Ornithology Master", badge_img: "URL" },
        { xp_threshold: 1000, name: "Feathered Aficionado!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 900
      [
        { xp_threshold: 100, name: "Novice Birdwatcher 🦜", badge_img: "badges/first.png" },
        { xp_threshold: 200, name: "Feathered Enthusiast!", badge_img: "URL" },
        { xp_threshold: 300, name: "Avian Collector", badge_img: "URL" },
        { xp_threshold: 500, name: "Ornithology Master", badge_img: "URL" },
      ]
    elsif self.user_xp >= 750
      [
        { xp_threshold: 100, name: "Novice Birdwatcher 🦜", badge_img: "badges/first.png" },
        { xp_threshold: 200, name: "Feathered Enthusiast!", badge_img: "URL" },
        { xp_threshold: 300, name: "Avian Collector", badge_img: "URL" },
      ]
    elsif self.user_xp >= 500
      [
        { xp_threshold: 100, name: "Novice Birdwatcher 🦜", badge_img: "badges/first.png" },
        { xp_threshold: 200, name: "Feathered Enthusiast!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 100
      [
        { xp_threshold: 100, name: "Novice Birdwatcher 🦜", badge_img: "badges/first.png" },
      ]
    elsif self.user_xp >= 10
      [
        { xp_threshold: 10, name: "Egg-citing", badge_img: "badges/first.png" },
      ]
    end



  end
end
