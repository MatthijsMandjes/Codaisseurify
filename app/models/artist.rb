class Artist < ApplicationRecord
  validates :name, :age, :active, presence: true

  has_many :songs, dependent: :destroy
  has_one :photo
end
