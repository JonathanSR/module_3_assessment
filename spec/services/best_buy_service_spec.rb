require 'rails_helper'

describe BestBuyService do
  context "finds all stores within 25mi" do
    it "returns all stores for that query" do

      stores = BestBuyService.find_by_zip("80202")
      store = stores[0]

      expect(stores).to be_a(Array)
      expect(stores.count).to eq(16)

      # expect(long name).to be_truthy
      # expect(city).to be_truthy
      # expect(distance).to be_truthy
      # expect(phone number).t0 be_truthy
      # expect(store type).to be_truthy
    end
  end
end