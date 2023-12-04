class Spot < ApplicationRecord
  belongs_to :bird
  belongs_to :user
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
