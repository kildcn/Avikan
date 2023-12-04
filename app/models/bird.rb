class Bird < ApplicationRecord
  has_many :captures
  has_many :spots
  has_one_attached :photo
end
