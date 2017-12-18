require 'pry'

puts('Please input the maximum value: ')
rand_number = rand(gets.to_i)
puts rand_number

guess_number = gets.to_i
while guess_number != rand_number do
  if guess_number > rand_number
    puts 'Wrong, guess lower!'
  elsif guess_number < rand_number
    puts 'Wrong, guess higher!'
  end
  guess_number = gets.to_i
end

puts'You made the right guess, congraduations!'