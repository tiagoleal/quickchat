class Talk < ApplicationRecord
  #has one team
  belongs_to :team
  #has one user and name class user foreign jey
  belongs_to :user_one, :class_name => :User
  #has one user and name class user foreign jey
  belongs_to :user_two, :class_name => :User
  #when remove a talk all messages relationship was removed
  has_many :messages, as: :messagable, :dependent => :destroy
  ##required a file user_one and two_user when create a record talk
  validates_presence_of :user_one, :user_two, :team
end
