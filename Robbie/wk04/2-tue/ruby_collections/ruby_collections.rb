require 'pry'

planeteers = ["Earth", "Wind", "Captain Planet", "Fire", "Water"]
puts 'part1------------'
puts planeteers[1]

puts 'part2------------'
planeteers.push("Heart")
puts planeteers

puts 'part3------------'
puts planeteers - ["Captain Planet"]

puts 'part4------------'
rangers = ["Red", "Blue", "Pink", "Yellow", "Black"]
heroes = planeteers + rangers
puts heroes

puts 'part5------------'
puts heroes.sort!

puts 'part6------------'
puts heroes.shuffle!

puts 'bonus1-----------'
puts heroes.sample

puts 'bonus2-----------'
puts heroes.select {
  |str| str.start_with?("B")
}

puts 'Hashes1-----------'
ninja_turtle = {
  name: "Michelangelo",
  weapon: "Nunchuks",
  radical: true
}
puts ninja_turtle

puts 'Hashes2-----------'
ninja_turtle[:age] = 50
puts ninja_turtle

puts 'Hashes3-----------'
ninja_turtle.delete(:radical)
puts ninja_turtle

puts 'Hashes4-----------'
ninja_turtle[:pizza_toppings] = ["cheese", "pepperoni", "peppers"]
puts ninja_turtle

puts 'Hashes5-----------'
puts ninja_turtle[:pizza_toppings][0]

puts 'Hashes6-----------'
array_of_keys = ninja_turtle.keys
puts array_of_keys

puts 'bonus-------------'
ninja_turtle.each {|key, value| puts key.to_s + "'s is equal to " + value.to_s}

binding.pry