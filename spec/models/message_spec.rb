require 'rails_helper'

RSpec.describe Message, type: :model do
  
  context 'Associations' do
    it 'belongs_to? messagable' do
      is_expected.to belong_to(:messagable)
    end
    it 'belongs_to? user' do
      is_expected.to belong_to(:user)
    end
  end

  context 'Validates fields' do
    it 'body?' do
      is_expected.to validate_presence_of(:body)
    end
    it 'user?' do
      is_expected.to validate_presence_of(:user)
    end
  end

  # TODO Add test after create commit callback
  # context 'create' do
  #   it 'when created' do
  #     # is_expected.to callback(MessageBroadcastJob.perform_later).after(:after_create_commit)
  #     # is_expected.to after_create_commit(MessageBroadcastJob.perform_later)
  #   end
  # end
end
