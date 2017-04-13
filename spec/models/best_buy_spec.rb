require 'rails_helper'

describe BestBuy do
  context "find by zip" do
    it "returns an array bestbuy store objects" do
      stores = BestBuy.find_by_zip("80202")
      store = stores[0]

      expect(stores).to be_a(Array)
      expect(stores.count).to eq(10)

      expect(store.name).to eq("BEST BUY MOBILE - CHERRY CREEK SHOPPING CENTER")
      expect(store.city).to eq("DENVER")
      expect(store.distance).to eq(3.45)
      expect(store.phone).to eq("303-270-9189")
      expect(store.type).to eq("Mobile SAS")
    end
  end
end