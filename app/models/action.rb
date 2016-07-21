class Action < ActiveRecord::Base
  belongs_to :user
  belongs_to :item


  validates :user_id, presence: true
  validates :item_id, presence: true
  validates :owner, presence: true
end
