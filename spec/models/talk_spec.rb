require 'rails_helper'

RSpec.describe Talk, type: :model do

  context 'Associations' do
    it 'belongs_to? team' do
      is_expected.to belong_to(:team)
    end
    it 'belongs_to? user_one' do
      is_expected.to belong_to(:user_one)
    end
    it 'belongs_to? user_two' do
      is_expected.to belong_to(:user_two)
    end
    it 'has_many? messages' do
      is_expected.to have_many(:messages)
    end
  end

  context 'Validates fields' do
    it 'user_one?' do
      is_expected.to validate_presence_of(:user_one)
    end
    it 'user_two?' do
      is_expected.to validate_presence_of(:user_two)
    end
    it 'team?' do
      is_expected.to validate_presence_of(:team)
    end
  end
end
