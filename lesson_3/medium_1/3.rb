# Question 3
# Alan wrote the following method, 
#which was intended to show all of the factors of the input number:

def factors(number)
  divisor = number
  factors = []


  while divisor > 0 do 
    factors << number / divisor if number % divisor == 0
    divisor -= 1 
  end 
  factors
end

p factors(12)
p factors(0)
p factors(-12)
# Alyssa noticed that this will fail if the input is 0, or a negative number, 
#and asked Alan to change the loop. 
#How can you make this work without using begin/end/until? 
# Note that we're not looking to find the factors for 0 or negative numbers, 
#but we just want to handle it gracefully instead of raising an exception or going into an infinite loop.

# Bonus 1
# What is the purpose of the number % divisor == 0 ?
  # if when we divide th number by the divisor and get a remainder of 0, it is proven true that the divisor is a factor

# Bonus 2
# What is the purpose of the second-to-last line (line 8) in the method (the factors before the method's end)?
  # to make sure that the method's return value is the factor array
# Solution 3