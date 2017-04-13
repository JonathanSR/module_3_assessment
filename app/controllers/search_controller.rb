class SearchController < ApplicationController

  def index

  @stores = BestBuy.find_by_zip(params[:zip])
  end
end