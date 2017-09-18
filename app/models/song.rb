class Song < ApplicationRecord
  validates :name, :active, :artist_id, presence: true
  belongs_to :artist
end
