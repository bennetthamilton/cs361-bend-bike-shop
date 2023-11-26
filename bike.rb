# Bike
require_relative 'luggage'

class Bike

  STANDARD_WEIGHT = 200 # lbs

  attr_reader :id, :color, :price, :weight, :luggage

  # eliminate argument order dependancy
  def initialize(args)
    @id         = args[:id]
    @color      = args[:color]
    @base_price = args[:base_price]                   # clearer distinction of price variables
    @weight     = args[:weight] || STANDARD_WEIGHT    # explicitly define defaults
    @luggage    = args[:luggage]
  end

  def price
    # included method that calculates the bikes portion of the total price
    @base_price + @weight * 2 + @luggage.price   
    # could potentially isolate vulnerable external message (luggage.price),
    # in this instance it is not necessary because it is within a complex method
  end

end
