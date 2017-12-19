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

binding.pry