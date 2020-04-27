# ask user for two numbers
# ask user for an operation to perfrom
# perform operation on two numbers
# output results

Kernel.puts("Welcome!")

Kernel.puts("what's the first number?")
number1 = Kernel.gets().chomp()

Kernel.puts("what's the second number?")
number2 = Kernel.gets().chomp()

Kernel.puts("what operation would you like to perform? 1)add 2)subtract 3)multiply 4)divide")
operator = Kernel.gets().chomp()


if operator == '1'
  result = number1.to_i + number2.to_i
elsif operator == '2'
  result = number1.to_i - number2.to_i
elsif operator == '3'
  result = number1.to_i * number2.to_i
else
  result = number1.to_f / number2.to_i
end
  

Kernel.puts("the result is #{result}")