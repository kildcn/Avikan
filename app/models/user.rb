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
        { xp_threshold: 100, name: "First bird!!! 🦜", badge_img: "URL" },
        { xp_threshold: 200, name: "Whuuu, second bird!", badge_img: "URL" },
        { xp_threshold: 300, name: "Whuuu, third bird!", badge_img: "URL" },
        { xp_threshold: 500, name: "Yeehaaa, five birds, champ!", badge_img: "URL" },
        { xp_threshold: 1000, name: "Yes yes yes, ten birds, champ!", badge_img: "URL" },
        { xp_threshold: 2000, name: "Yes yes yes, 20 birds, OMGGGG!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 1500
      [
        { xp_threshold: 100, name: "First bird!!! 🦜", badge_img: "URL" },
        { xp_threshold: 200, name: "Whuuu, second bird!", badge_img: "URL" },
        { xp_threshold: 300, name: "Whuuu, third bird!", badge_img: "URL" },
        { xp_threshold: 500, name: "Yeehaaa, five birds, champ!", badge_img: "URL" },
        { xp_threshold: 1000, name: "Yes yes yes, ten birds, champ!", badge_img: "URL" },
        { xp_threshold: 2000, name: "Yes yes yes, 20 birds, OMGGGG!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 1200
      [
        { xp_threshold: 100, name: "First bird!!! 🦜", badge_img: "URL" },
        { xp_threshold: 200, name: "Whuuu, second bird!", badge_img: "URL" },
        { xp_threshold: 300, name: "Whuuu, third bird!", badge_img: "URL" },
        { xp_threshold: 500, name: "Yeehaaa, five birds, champ!", badge_img: "URL" },
        { xp_threshold: 1000, name: "Yes yes yes, ten birds, champ!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 900
      [
        { xp_threshold: 100, name: "First bird!!! 🦜", badge_img: "URL" },
        { xp_threshold: 200, name: "Whuuu, second bird!", badge_img: "URL" },
        { xp_threshold: 300, name: "Whuuu, third bird!", badge_img: "URL" },
        { xp_threshold: 500, name: "Yeehaaa, five birds, champ!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 750
      [
        { xp_threshold: 100, name: "First bird!!! 🦜", badge_img: "URL" },
        { xp_threshold: 200, name: "Whuuu, second bird!", badge_img: "URL" },
        { xp_threshold: 300, name: "Whuuu, third bird!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 500
      [
        { xp_threshold: 100, name: "First bird!!! 🦜", badge_img: "URL" },
        { xp_threshold: 200, name: "Whuuu, second bird!", badge_img: "URL" },
      ]
    elsif self.user_xp >= 100
      [
        { xp_threshold: 100, name: "First bird!!! 🦜", badge_img: "URL" },
      ]
    end



  end
end
