require 'rails_helper'

describe "items api endpoints" do
  before do
    @item1 = Item.create(name:"water bottle", description:"holds water", image_url:"plastic.jpg")
    @item2 = Item.create(name:"phone", description:"paper weight", image_url:"apple.jpg")
    @item3 = Item.create(name:"chair", description:"holds weight", image_url:"red.jpg")
  end 

    it "it gets all items" do
      get "/api/v1/items"

      json_items = JSON.parse(response.body, symbolize_names: true)
      item = json_items.first

      expect(response).to be_success
      expect(json_items.count).to eq(3)
      expect(item).to have_key(:name)
      expect(item).to have_key(:description)
      expect(item).to have_key(:image_url)
    end

    it "returns a single item" do
      get api_v1_item_path(@item1)

      item = JSON.parse(response.body, symbolize_names: true)
      expect(response).to be_success

      expect(item[:name]).to eq(@item1.name)
      expect(item[:description]).to eq(@item1.description)
      expect(item[:image_url]).to eq(@item1.image_url)
    end

    it "deletes a single item" do
      expect(Item.count).to eq(3)

      delete api_v1_item_path(@item1)

      expect(response).to be_success
      expect(Item.count).to eq(2)
    end 
  end
