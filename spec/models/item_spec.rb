require 'rails_helper'

RSpec.describe Item, type: :model do
  describe "validations" do
    it { validate_inclusion_of (:name) }
    it { validate_inclusion_of (:description) }
    it { validate_inclusion_of (:user_id) }
  end
end
