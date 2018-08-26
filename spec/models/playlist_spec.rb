require 'rails_helper'

describe Playlist, type: :model do
  describe 'relationship' do
    it {should have_many(:songs).through(:playlist_songs)}
  end
end
