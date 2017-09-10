class Song < ApplicationRecord
  validates :name, :active, :price, :artist_id, presence: true
  belongs_to :artist
end
