require "rails_helper"
RSpec.describe Artist, type: :model do
  describe "home page" do
    let!(:artist_1) { create :artist }
    let!(:artist_2) { create :artist }

      it "shows list of artists" do
        visit root_path
        expect(page).to have_content artist_1.name
        expect(page).to have_content artist_2.name
    end
  end
end
