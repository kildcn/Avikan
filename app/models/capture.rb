require "open-uri"

class Capture < ApplicationRecord
  has_one_attached :photo

  belongs_to :bird, optional: true
  belongs_to :user
end
