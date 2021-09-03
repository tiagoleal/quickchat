require 'rails_helper'

RSpec.describe User, type: :model do

  context 'Associations' do
    it 'has_many? teams' do
      is_expected.to have_many(:teams)
    end
    it 'has_many? messages' do
      is_expected.to have_many(:messages)
    end
    # TODO It's not working, maybe because Talks has user_one and user_to, it needed to be validate
    # it 'has_many? talks' do
    #   is_expected.to have_many(:talks)
    # end
    it 'has_many? team_users' do
      is_expected.to have_many(:team_users)
    end
    it 'has_many? member_teams' do
      is_expected.to have_many(:member_teams)
    end
  end
end
