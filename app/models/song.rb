class Song < ApplicationRecord
  validates :name, :active, presence: true
  belongs_to :artist
end
