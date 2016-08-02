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

require 'rails_helper'

RSpec.describe Action, type: :model do
  describe "validations" do
    it { validate_presence_of (:user_id) }
    it { validate_presence_of (:item_id) }
    it { validate_presence_of (:owner) }
  end
  describe "relations" do
    it { is_expected.to belong_to (:user)}
    it { is_expected.to belong_to (:item)}
  end

end
