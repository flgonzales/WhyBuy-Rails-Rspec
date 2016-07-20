class UserDetail < ActiveRecord::Base
  belongs_to :user

  validates :zipcode, presence: true
end
