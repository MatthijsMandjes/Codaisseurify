class Song < ApplicationRecord
  validates :name, :price, :artist_id, presence: true
  belongs_to :artist
end
