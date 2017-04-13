class BestBuy
  attr_reader :name
              :city
              :distance
              :phone
              :type

  def initialize(store_information)
    @name = store_information[:name]
    @city = store_information[:city]
    @distance = store_information[:distance]
    @phone = store_information[:phone]
    @type = store_information[:type]
  end


end