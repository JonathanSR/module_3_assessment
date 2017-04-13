class BestBuy
  attr_reader :name,
              :city,
              :distance,
              :phone,
              :type

  def initialize(store_information)
    @name = store_information[:longName]
    @city = store_information[:city]
    @distance = store_information[:distance]
    @phone = store_information[:phone]
    @type = store_information[:storeType]
  end

  def self.find_by_zip(zip)
    raw_data = BestBuyService.find_by_zip(zip)
    raw_data.map do |store_information|
      BestBuy.new(store_information)
    end
  end
end