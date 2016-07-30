require 'faker'

FactoryGirl.define do
  factory :user do
    email { Faker::Email.email}
    password { Faker::Password.password}
  end
end
