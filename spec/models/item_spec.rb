require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "validations" do
    it { validate_inclusion_of (:name) }
    it { validate_inclusion_of (:description) }
    it { validate_inclusion_of (:user_id) }
  end
  describe "relations" do
    it { is_expected.to have_many(:actions) }
    it { is_expected.to belongs_to(:user) }
  end
end
