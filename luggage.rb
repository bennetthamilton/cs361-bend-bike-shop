class Luggage

  DEFAULT_MAX_CAPACITY = 10
  ITEM_WEIGHT = 10    # added constant instead of having to find instance 

  attr_reader :items

  # eliminate argument order dependancy and define defaults
  def initialize(args)
    @capacity = args[:initial_capacity] || DEFAULT_MAX_CAPACITY
    @items    = args[:items]
    # @bike = bike, this feels redundant and will make initializing easier if its removed
    # bike should have a luggage dependancy but the reverse should not be true
  end

  def add(item)
    @items << item
  end

  def weight
    @items.size * ITEM_WEIGHT
  end

  def price
    # luggage's portion of price calculation
    @weight * 2
  end

end
