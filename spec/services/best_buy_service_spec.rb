require 'rails_helper'

describe BestBuyService do
  context "finds all stores within 25mi" do
    it "returns all stores for that query" do

      stores = BestBuyService.find_by_zip("80202")
      store = stores[0]

      expect(stores).to be_a(Array)
      expect(stores.count).to eq(10)

      expect(store[:longName]).to be_truthy
      expect(store[:city]).to be_truthy
      expect(store[:distance]).to be_truthy
      expect(store[:phone]).to be_truthy
      expect(store[:storeType]).to be_truthy
    end
  end
end