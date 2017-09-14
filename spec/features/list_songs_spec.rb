require "rails_helper"
RSpec.describe Song, type: :model do
  describe "artists show page" do
    let!(:artist_1) { create :artist }

      it "shows list of songs" do
        visit artists_path
        expect(page).to have_content artist_1.name
      end
  end
end
