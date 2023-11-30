class Bird < ApplicationRecord
  has_many :captures
  has_many :spots
end
