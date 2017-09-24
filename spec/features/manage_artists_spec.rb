require 'rails_helper'

feature 'Manage artists', js: true do
  let!(:artist1) { create :artist }

  scenario 'delete an artist' do
    visit root_path
    page.find(:css, ".deleteartist").click
    expect(page).not_to have_content("artist3");
  end

end
