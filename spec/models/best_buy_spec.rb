require 'rails_helper'

describe BestBuy do
  context "find by zip" do
    it "returns an array bestbuy store objects" do
      stores = BestBuyService.find_by_zip("80202")
      store = stores[0]

      expect(stores).to be_a(Array)
      expect(stores.count).to eq(10)

      expect(bestbuy.name).to be_truthy
      expect(bestbuy.city).to be_truthy
      expect(bestbuy.distance).to be_truthy
      expect(bestbuy.phone).to be_truthy
      expect(bestbuy.type).to be_truthy
    end
  end
end