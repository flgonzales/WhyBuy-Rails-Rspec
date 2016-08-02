# == Schema Information
#
# Table name: actions
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  owner      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :action do
    user nil
    item nil
    owner "MyString"
  end
end
