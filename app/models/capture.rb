class Capture < ApplicationRecord
  belongs_to :bird_id, optional: true
  belongs_to :user_id
end
