class BestBuyService

  def self.find_by_zip(zip)
    response = 
    Faraday.get("https://api.bestbuy.com/v1/stores(area(#{zip},25))?format=json&show=longName,city,distance,phone,storeType&apiKey=#{ENV['BEST_BUY_KEY']}")
    final = JSON.parse(response.body, symbolize_names: true)[:stores]
    final
  end
end