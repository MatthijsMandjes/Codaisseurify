class Artist < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :name, :age, :active, presence: true

  has_many :songs, dependent: :destroy
  has_one :photo, dependent: :destroy
end
