class BestBuyService

  def self.find_by_zip(zip)
    response = 
    Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=storeId,storeType,name,city,region&apiKey=#{ENV['BEST_BUY_KEY']}")
    final = JSON.parse(response.body, symbolize_names: true)
    byebug
    final
  end
end