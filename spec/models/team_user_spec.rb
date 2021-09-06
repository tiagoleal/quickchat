require 'rails_helper'

RSpec.describe TeamUser, type: :model do

  context 'Associations' do
    it 'belongs_to? team' do
      is_expected.to belong_to(:team)
    end
    it 'belongs_to? user' do
      is_expected.to belong_to(:user)
    end
  end

  context 'Validates fields' do
    it 'team?' do
      is_expected.to validate_presence_of(:team)
    end
    it 'user?' do
      is_expected.to validate_presence_of(:user)
    end
    # FIXME Uncomment and test, I could not understand 🤷🏻‍♂️
    # it 'validate_uniqueness_of? user_id, scope: :team_id' do
    #   is_expected.to validate_uniqueness_of(:user_id).scoped_to(:team_id)
    # end
  end
end
