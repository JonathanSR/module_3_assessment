require 'rails_helper'

describe "user visits root path" do
  describe "user enters search params" do
    it "take user to search results" do

      visit '/'

      fill_in :zip, with: "80202"
      click_on "search"

      expect(current_path).to eq("/search")
    end
  end
end


