# Assignment: Mortgage / Car Loan Calculator
# Take everything you've learned so far and build a mortgage calculator 
#(or car payment calculator -- it's the same thing).

# You'll need three pieces of information:

# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
# From the above, you'll need to calculate the following two things:

# monthly interest rate
# loan duration in months
# You can use the following formula:

# Mortgage Calculator Formula

# Translated to Ruby, this is what the formula looks like:

# m = p * (j / (1 - (1 + j)**(-n)))
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months
# Finally, don't forget to run your code through Rubocop.

# Hints:

# Figure out what format your inputs need to be in. For example, should the interest rate be expressed as 5 or .05, if you mean 5% interest?
# If you're working with Annual Percentage Rate (APR), you'll need to convert that to a monthly interest rate.
# Be careful about the loan duration -- are you working with months or years? Choose variable names carefully to assist in remembering.


#########

# inputs:
# the loan amount
# the Annual Percentage Rate (APR)
# the loan duration
puts "Welcome to the Mortgage Calculator!"

puts "What is the loan amount?"
p loan_amount = gets.chomp.to_i

puts "What is the APR?"
apr = gets.chomp.to_f
p monthly_interest_rate = apr / 12

puts "What is the  loan duration in years?"
p loan_duration = gets.chomp.to_f
p monthly_loan_duration = loan_duration * 12


# m = p * (j / (1 - (1 + j)**(-n)))

monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-monthly_loan_duration)))
p monthly_payment
puts "Your monthly payment is: #{monthly_payment}" 
# m = monthly payment
# p = loan amount
# j = monthly interest rate
# n = loan duration in months



