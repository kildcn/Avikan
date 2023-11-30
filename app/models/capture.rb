class Capture < ApplicationRecord
  has_one_attached :photo

  belongs_to :bird_id, optional: true
  belongs_to :user_id
end
