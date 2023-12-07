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
    if self.user_xp >= 5000
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: true },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: true },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: true },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: true },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: true },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: true },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
      ]
    elsif self.user_xp >= 3000
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: true },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: true },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: true },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: true },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: true },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: true },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: true },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
      ]
    elsif self.user_xp >= 1500
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: true },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: true },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: true },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: true },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: true },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: true },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
      ]
    elsif self.user_xp >= 1200
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: true },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: true },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: true },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: true },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: true },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: true },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
      ]
    elsif self.user_xp >= 750
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: true },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: true },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: true },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: true },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: false },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
      ]
    elsif self.user_xp >= 500
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: true },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: true },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: true },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: false },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
      ]
    elsif self.user_xp >= 100
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: true },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: true },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: false },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false }
      ]
    else
      [
        { xp_threshold: 100, name: "Birdwatcher", badge_img: "badges/level1.png", unlocked: false },
        { xp_threshold: 200, name: "Enthusiast", badge_img: "badges/level2.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/level3.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/level4.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/level5.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/level6.png", unlocked: false },

        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 300, name: "Collector",badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 500, name: "Master", badge_img: "badges/first.png",  unlocked: false },
        { xp_threshold: 1000, name: "Aficionado", badge_img: "badges/first.png", unlocked: false },
        { xp_threshold: 2000, name: "Expert", badge_img: "badges/first.png", unlocked: false }
      ]
    end
  end
end
