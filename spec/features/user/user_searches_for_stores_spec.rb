require 'rails_helper'

describe "user visits root path" do
  describe "user enters search params" do
    it "take user to search results" do

      visit '/'

      fill_in :zip, with: "80202"
      click_on "search"

      expect(current_path).to eq("/search")
      
      # expect(page).to have_content("16 Total Stores")
      # expect(results).to eq(10)
      # expect(stores)
      # expect(long name)
      # expect(city)
      # expect(distance)
      # expect(phone number)
      # expect(store type)

      
      # And I should see stores within 25 miles of 80202
      # And I should see a message that says "16 Total Stores"
      # And I should see exactly 10 results
      # And I should see the long name, city, distance, phone number and store type for each of the 10 results
    end
  end
end


