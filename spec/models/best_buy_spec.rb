require 'rails_helper'

describe BestBuy do
  context "find by zip" do
    it "returns an array bestbuy store objects" do
      stores = BestBuy.find_by_zip("80202")
      store = stores[0]

      expect(stores).to be_a(Array)
      expect(stores.count).to eq(10)

      expect(store.name).to be_truthy
      expect(store.city).to be_truthy
      expect(store.distance).to be_truthy
      expect(store.phone).to be_truthy
      expect(store.type).to be_truthy
    end
  end
end