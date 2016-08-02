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

class Action < ActiveRecord::Base
  belongs_to :user
  belongs_to :item


  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :owner, presence: true
end
