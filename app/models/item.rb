class Item < ActiveRecord::Base
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
