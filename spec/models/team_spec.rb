require 'rails_helper'

RSpec.describe Team, type: :model do

  context 'Associations' do
    it 'belongs_to? user' do
      is_expected.to belong_to(:user)
    end
    it 'has_many? talks' do
      is_expected.to have_many(:talks)
    end
    it 'has_many? channels' do
      is_expected.to have_many(:channels)
    end
    it 'has_many? team_users' do
      is_expected.to have_many(:team_users)
    end
    it 'has_many? users' do
      is_expected.to have_many(:users)
    end
  end

  context 'Validates fields' do
    it 'slug?' do
      is_expected.to validate_presence_of(:slug)
    end
    it 'user?' do
      is_expected.to validate_presence_of(:user)
    end
    # FIXME Uncomment and test
    # it 'validate_uniqueness_of? slug' do
    #   is_expected.to validate_uniqueness_of(:slug)
    # end
  end
end
