class Spot < ApplicationRecord
  belongs_to :bird
  belongs_to :user
  geocoded_by :address
end
