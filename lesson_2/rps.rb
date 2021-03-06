VALID_CHOICES = ["Rock", "Paper", "Scissors"]

WINNING_COMBOS = {

  "Rock" => "Scissors",
  "Paper" => "Rock",
  "Scissors" => "Paper"
}

def prompt(message)
  puts "=> #{message}"
end

def player_wins?(choice, computer_choice)
  WINNING_COMBOS[choice] == computer_choice
end

def display_results(choice, computer_choice)
  prompt("Your choice: #{choice}, Computer: #{computer_choice}")

  return prompt("It's a tie!") if choice == computer_choice

  return prompt("You won!") if player_wins?(choice, computer_choice)

  prompt("Computer won!")
end

choice = ""

loop do
  prompt("Choose one: #{VALID_CHOICES.join(', ')}")
  choice = gets.chomp

  break if VALID_CHOICES.include?(choice)
  prompt("Not a valid choice, try again.")
end

computer_choice = VALID_CHOICES.sample

display_results(choice, computer_choice)
