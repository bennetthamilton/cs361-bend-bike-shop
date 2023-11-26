!# /usr/bin/env ruby

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]

# now initialized outside of bike class, passed as a parameter
luggage = Luggage.new(:items => extra_items)  

# adjust args formatting
bike = Bike.new(
  :id         => 1, 
  :color      => :pink, 
  :base_price => 99.99, 
  :luggage    => luggage)

rental = Rental.new(bike)

puts "Total Price: #{rental.price}, Total Weight: #{rental.weight}"

