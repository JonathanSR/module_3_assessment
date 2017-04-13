class SearchController < ApplicationController

  def index
  @stores = BestBuy.find_by_zip(zip)
  end
end