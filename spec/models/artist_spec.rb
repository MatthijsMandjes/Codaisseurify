require 'rails_helper'

RSpec.describe Artist, type: :model do
  describe "validations" do
    it "is invalid without a name" do
      artist = Artist.new(name: "")
      artist.valid?
      expect(artist.errors).to have_key(:name)
    end
    it "is invalid without age" do
      artist = Artist.new(age: "")
      artist.valid?
      expect(artist.errors).to have_key(:age)
    end

  end

  describe "association with song" do
  let(:artist) { create :artist }
  let!(:song) { create :song, artist: artist }

  it "has many songs" do
    song1 = artist.songs.new
    expect(artist.songs).to include(song1)
  end

  it "deletes associated songs" do
    expect{ artist.destroy }.to change(Song, :count).by(-1)
  end

end
end
