!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)
handler = CargoHandler.new

handler.add_cargo(:apples)
handler.add_cargo(:water)
handler.add_cargo(:repair_kit)

puts "Space for #{handler.pannier_remaining_capacity} items left."

bike.rent!
