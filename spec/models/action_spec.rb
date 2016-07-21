require 'rails_helper'

RSpec.describe Action, type: :model do
  describe "validations" do
    it { validate_inclusion_of (:user_id) }
    it { validate_inclusion_of (:item_id) }
    it { validate_inclusion_of (:owner) }
  end
  describe "relations" do
    it { is_expected.to belong_to (:user)}
    it { is_expected.to belong_to (:item)}
  end

end
