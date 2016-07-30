require "rails_helper"
require "support/items_steps"
require 'capybara/rspec'

RSpec.feature "The whybuy homepage", :type => :feature do
  include ItemsSteps

  it "shows me the completed items header" do
    visit_homepage
    i_should_see_the_available_items_header
  end

  context "with a available item"
    before do
      visit_item_form
      create_complete_items_with_description("test1")
    end

    it "shows the available items, in the available items list" do
      visit_homepage
      i_should_see_the_available_items_header("test1")
    end
end
