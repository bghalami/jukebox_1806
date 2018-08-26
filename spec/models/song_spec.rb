require 'rails_helper'

describe Song, type: :model do
  describe 'relationship' do
    it {should belong_to(:artist)}
  end
end
