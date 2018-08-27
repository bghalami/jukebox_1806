require 'rails_helper'

describe "As a user" do
  describe "user goes to new song page" do
    it "should show a create song form" do
      artist = Artist.create(name: "Johnny Cash")
      visit new_artist_song_path(artist)
      song_title = "A Boy Names Sue"
      fill_in :song_title, with: song_title
      fill_in :song_length, with: 300
      fill_in :song_play_count, with: 200


      click_on "Create Song"

      expect(current_path).to eq(song_path(Song.last))
      expect(page).to have_content("Johnny Cash")
      expect(page).to have_content(song_title)
    end
  end
end
