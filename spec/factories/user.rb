FactoryBot.define do
  factory :user do
    name { Faker::Internet.username }
    email { Faker::Internet.email }
    password { 'secret123' }
  end
end
