require 'rails_helper'

RSpec.describe UserDetail, type: :model do
  describe "validations" do
    it { validate_presence_of (:zipcode) }
  end
end
