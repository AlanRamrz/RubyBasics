def maximumCupcakes(trips)
  cupcakes = 0
  budget = trips[0]
  cost = trips[1]
  required_wrappers = trips[2]

  cupcakes += budget/cost
  puts "I can buy: #{cupcakes}"
  puts "So i have: #{cupcakes} wrappers"

  more = cupcakes/required_wrappers
  puts "Exchange wrappers for: #{more} more"

  cupcakes += more
  puts "I ate: #{cupcakes}"
end

parameters = [6,2,2]
cupcakes = maximumCupcakes(parameters)
puts cupcakes
