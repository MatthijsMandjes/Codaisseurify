require 'rails_helper'

RSpec.describe Song, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      song = Song.new(name: "")
      song.valid?
      expect(song.errors).to have_key(:name)
    end
      it "is invalid without a price" do
      song = Song.new(price: "")
      song.valid?
      expect(song.errors).to have_key(:price)
    end

    it "is invalid without artist id" do
      song = Song.new(artist_id: "")
      song.valid?
      expect(song.errors).to have_key(:artist_id)
    end
  end
  describe "association with artist" do
    let(:artist) { create :artist }

    it "belongs to artist" do
      song = artist.songs.new
      expect(song.artist).to eq(artist)
    end

  end

end
