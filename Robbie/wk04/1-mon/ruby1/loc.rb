require 'pry'

print 'Enter filename: '
filename = gets.chomp
fileArr = IO.readlines(filename)
puts fileArr.length.to_s + ' line(s)'

binding.pry