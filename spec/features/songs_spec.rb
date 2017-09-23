require 'rails_helper'

feature 'Manage songs', js: true do
  let!(:artist) { create :artist }


  def addsong
    visit artist_path(artist.id)
    fill_in 'song[name]', with: 'test'
    fill_in 'song[price]', with: 5
    fill_in 'song[active]', with: true

    page.execute_script("$('form').submit()")


  end
  scenario 'add a song' do
    addsong
    expect(page).to have_content('test')
    sleep(1)
  end
  scenario 'delete a song' do
    addsong
    page.find(:css, ".deletesong").click
    expect(page).not_to have_content('test')
  end

end
