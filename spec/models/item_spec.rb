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

require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "validations" do
    it { validate_presence_of (:name) }
    it { validate_presence_of (:description) }
    it { validate_presence_of (:user_id) }
  end
  describe "relations" do
    it { is_expected.to have_many(:actions) }
    it { is_expected.to belongs_to(:user) }
  end
end
