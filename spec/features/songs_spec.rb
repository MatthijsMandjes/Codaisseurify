require 'rails_helper'

feature 'Add song', js: true do
  let!(:artist) { create :artist }

  before :each do
    visit artist_path(artist.id)
  end

  scenario 'add a song' do
    fill_in 'song[name]', with: 'test'
    fill_in 'song[price]', with: 5
    fill_in 'song[active]', with: true

    page.execute_script("$('form').submit()")

    expect(page).to have_content('test')
  end

end
