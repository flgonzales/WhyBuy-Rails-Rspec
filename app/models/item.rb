# == Schema Information
#
# Table name: items
#
#  id           :integer          not null, primary key
#  name         :string
#  description  :text
#  available    :boolean
#  start_avail  :date
#  finish_avail :date
#  user_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  image        :string
#

class Item < ActiveRecord::Base
  belongs_to :user

  mount_uploader :image, ImageUploader

  validates :name, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
end
