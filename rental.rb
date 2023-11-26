class Rental

  attr_reader :bike

  def initialize(bike)
    @bike = bike
  end

  def price
    # self.bike.price + self.bike.luggage.items.count * 10, removed and handled by Bike
    @bike.price
  end

  def weight
    # self.bike.weight + self.bike.luggage.items.count, removed and handled by Bike
    @bike.weight
  end

end
