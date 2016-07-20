require 'faker'

FactoryGirl.define do
  factory :user do |f|
    f.email { Faker::Email}
    f.password { Faker::Password}
  end
end
