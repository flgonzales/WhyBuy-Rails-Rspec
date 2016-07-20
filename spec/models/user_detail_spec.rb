require 'rails_helper'

RSpec.describe UserDetail, type: :model do
  describe "validations" do
    it { validate_inclusion_of (:zipcode) }
  end
end
