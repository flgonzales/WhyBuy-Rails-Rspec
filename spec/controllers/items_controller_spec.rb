require 'rails_helper'

RSpec.describe ItemsController, type: :controller do

  describe "GET #index" do
    it "returns http success" do
      sign_in
      
      get :index
      expect(response).to be_success
    end

  #  it "assigns @items" do
  #    user = FactoryGirl.create :user
  #    item = Item.create
  #    get :index
  #    expect(assigns(:items)).to eq([item])
  #  end

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "create a new item" do

  end
end
