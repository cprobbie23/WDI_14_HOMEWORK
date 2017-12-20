# # Calculator

# ### Explanation
# - You will be building a CLI calculator. Which means it will be a command line text based program. A calculator can perform multiple arithmetic operations.  
# Your function should allow the user to choose which operation is expected, enter in the values to perform the operation on, and ultimately view the result.

# ### Specification:
# - A user should be given a menu of operations
# - A user should be able to choose from the menu
# - A user should be able to enter numbers to perform the operation on
# - A user should be shown the result
# - This process should continue until the user selects a quit option from the menu

# ##### Phase 1
# - Calculator functionality
#   - Calculator should be able to do basic arithmetic (+,-, *, /)

# ##### Phase 2
# - Advanced Calculator functionality
#   - Calculator should be able to do basic arithmetic (exponents, square roots)

# ##### Phase 3
# - User should be given a menu of Calculator functionality
# - User should be able to choose intended functionality

# ### Optional Extensions
# - Does your calculator allows addition of more then 2 numbers in one go? eg: 2 + 3 + 4
require 'pry'

loop do
  puts '------Start Calculator------'
    # a is operand_1 and b is operand_2
  print 'Input first operand: '
  a = gets.chomp

  more_input = 'y'
  while more_input == 'y'
   

    puts '-----Menu of operations-----'
    puts '1. +'
    puts '2. -'
    puts '3. x'
    puts '4. /'
    puts '5. exponents'
    puts '6. square_roots'
    puts '0. quit'
    print 'please select your operator: '
    selection = gets.chomp.to_i

    def add(num1, num2)
      num1 = num1.to_f + num2.to_f
      return num1
    end

    def subtract(num1, num2)
      num1 = num1.to_f - num2.to_f
      return num1
    end

    def multiply(num1, num2)
      num1 = num1.to_f * num2.to_f
      return num1
    end

    def divide(num1, num2)
      num1 = num1.to_f / num2.to_f
      return num1
    end

    def exponents(num1, num2)
      num1 = num1.to_f ** num2.to_f
      return num1
    end

    def square_roots(num1)
      return Math.sqrt(num1.to_f)      
    end

    def new_operand()
      print 'Input another operand: '
      b = gets.chomp
      return b
    end

      if selection == 1        
        a = add(a, new_operand)
        puts 'Result = ' + a.to_s
      elsif selection == 2        
        a = subtract(a, new_operand)
        puts 'Result = ' + a.to_s
      elsif selection == 3
        a = multiply(a, new_operand)
        puts 'Result = ' + a.to_s
      elsif selection == 4
        a = divide(a, new_operand)
        puts 'Result = ' + a.to_s
      elsif selection == 5
        a = exponents(a, new_operand)
        puts 'Result = ' + a.to_s
      elsif selection == 6
        a = square_roots(a)
        puts 'Result = ' + a.to_s       
      elsif selection == 0 
        puts 'Exit program!'
        break
      else 
        puts 'Invalid input, start from the beginning.'
        break      
      end
      print "Do you have more operand? (y/n) "
      more_input = gets.chomp

  end
  break if selection == 0
end

