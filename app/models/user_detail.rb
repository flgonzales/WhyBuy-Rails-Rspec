# == Schema Information
#
# Table name: user_details
#
#  id          :integer          not null, primary key
#  username    :string
#  name_first  :string
#  name_last   :string
#  zipcode     :string
#  address_st  :string
#  address_hno :integer
#  address_cpm :string
#  city        :string
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class UserDetail < ActiveRecord::Base
  belongs_to :user

  validates :zipcode, presence: true
end
