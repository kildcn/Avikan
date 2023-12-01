class Capture < ApplicationRecord
  belongs_to :bird, optional: true
  belongs_to :user
  has_one_attached :photo

  def self.search(keyword)
    where("title LIKE ? OR description LIKE ?", "%#{keyword}%", "%#{keyword}%")
  end

  include PgSearch::Model
  pg_search_scope :global_capture_bird_search,
    against: [],
    associated_against: {
      bird: [ :common_name, :scientific_name, :description, :habitat ]
    },
    using: {
      tsearch: { prefix: true }
    }
end
