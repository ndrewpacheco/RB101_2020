require 'pry'
DIGITS = Hash[(0..9).to_a.zip('0'..'9').to_a]

# Convert a Number to a String!
# In the previous two exercises,
# you developed methods that convert simple numeric strings to signed Integers.
# In this exercise and the next, you're going to reverse those methods.

# Write a method that takes a positive integer or zero,
# and converts it to a string representation.

# You may not use any of the standard conversion methods available in Ruby,
# such as Integer#to_s, String(), Kernel#format, etc.
# Your method should do this the old-fashioned way
# and construct the string by analyzing and manipulating the number.

# Examples



def integer_to_string(num)

  str = ''
  multiples_arr = []
  multiple = 1

  loop do
    multiples_arr << multiple
    multiple *= 10
    break if num / multiple == 0
  end

  multiples_arr.reverse.each do |mult|
    digit = num / mult
    num -= (digit * mult)
    str << DIGITS[digit]
  end
str

end

def signed_integer_to_string(num)

  if num < 0
    num *= -1
    '-' + integer_to_string(num)
  elsif num > 0
    '+' + integer_to_string(num)
  else
    integer_to_string(num)

  end

end


p signed_integer_to_string(4321) == '+4321'
p signed_integer_to_string(-123) == '-123'
p signed_integer_to_string(0) == '0'

 p integer_to_string(4321) == '4321'
 p integer_to_string(0) == '0'
 p integer_to_string(5000) == '5000'

