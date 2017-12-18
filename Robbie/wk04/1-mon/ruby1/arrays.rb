require 'pry'

days_of_the_week = %w(Monday Tuesday Wednesday Thursday Friday Saturday Sunday)
puts 'Q1'
puts days_of_the_week
puts 'Q2'
puts days_of_the_week.rotate(-1)
puts 'Q3'
weekdays = %w(Monday Tuesday Wednesday Thursday Friday)
weekend = %w(Saturday Sunday)
new_days_of_the_week = [weekdays,weekend]
puts new_days_of_the_week
puts 'Q4'
taken_days = new_days_of_the_week.shift
puts taken_days
puts new_days_of_the_week
puts 'Q5'
puts new_days_of_the_week.sort

binding.pry