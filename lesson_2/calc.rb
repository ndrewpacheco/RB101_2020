# ask user for two numbers
# ask user for an operation to perfrom
# perform operation on two numbers
# output results

def prompt(message)
  Kernel.puts(message.to_s)
end

def valid_number?(num)
  num.to_i != 0
end

prompt("Welcome!")

loop do
  number1 = ''
  number2 = ''
  loop do
    prompt("what's the first number?")
    number1 = Kernel.gets().chomp()

    break if valid_number?(number1)
    prompt("Not a valid number")
  end

  loop do
    prompt("what's the second number?")
    number2 = Kernel.gets().chomp()

    break if valid_number?(number1)
    prompt("Not a valid number")
  end

  operator_prompt = <<-MSG
  what operation would you like to perform?
    1)add
    2)subtract
    3)multiply
    4)divide
  MSG

  prompt(operator_prompt)
  operator = Kernel.gets().chomp()

  result = case operator
           when '1'
             number1.to_i + number2.to_i
           when '2'
             number1.to_i - number2.to_i
           when '3'
             number1.to_i * number2.to_i
           when '4'
             number1.to_f / number2.to_i

           end

  prompt("the result is #{result}")

  prompt("Do you want do again? (Y for another)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("thanks")
