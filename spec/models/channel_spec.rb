require 'rails_helper'

RSpec.describe Channel, type: :model do

  context 'Associations' do
    it 'has_many? messages' do
      is_expected.to have_many(:messages)
    end
    it 'belongs_to? team' do
      is_expected.to belong_to(:team)
    end
    it 'belongs_to? user' do
      is_expected.to belong_to(:user)
    end
  end

  context 'Validates fields' do
    it 'slug?' do
      is_expected.to validate_presence_of(:slug)
    end
    it 'team?' do
      is_expected.to validate_presence_of(:team)
    end
    it 'user?' do
      is_expected.to validate_presence_of(:user)
    end
    it 'validate_uniqueness_of? slug, scope: :team_id' do
      is_expected.to validate_uniqueness_of(:slug).scoped_to(:team_id)
    end
  end
end
