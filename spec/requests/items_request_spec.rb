require 'rails_helper'

describe "items api endpoints" do
  before do
    item1 = Item.create(name:"water bottle", description:"holds water", image_url:"plastic.jpg")
    item2 = Item.create(name:"phone", description:"paper weight", image_url:"apple.jpg")
    item3 = Item.create(name:"chair", description:"holds weight", image_url:"red.jpg")
  end 

    decribe "it gets all items" do
      get "/api/v1/items"

      json.items = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_success

    