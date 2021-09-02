class Message < ApplicationRecord
    belongs_to :messagable, polymorphic: true
    #has one user
    belongs_to :user
     #required field body in user when create a record message
    validates_presence_of :body, :user
    after_create_commit {MessageBroadcastJob.perform_later self}
end
