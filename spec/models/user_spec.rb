require 'rails_helper'
require 'spec_helper'

RSpec.describe User, type: :model do
  describe "validations" do
      it { is_expected.to have_many(:items) }
      it { is_expected.to have_one(:user_detail) }
      it { is_expected.to have_many(:actions) }
  end
end
