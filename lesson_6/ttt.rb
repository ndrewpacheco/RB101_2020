require 'pry'

INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def prompt(msg)
  puts "=> #{msg}"
end

def joinor(arr, grammar = ", " , or_str = "or")
  return "#{arr[0]}" if arr.size == 1
  return "#{arr[0]} #{or_str} #{arr[1]}" if arr.size < 3

  output_str = ""

  arr.each do |num|
    if num == arr.last
      output_str << "#{or_str} #{num}"
    else
      output_str << "#{num}#{grammar}"
    end
  end


  output_str
end

# rubocop:disable Metrics/AbcSize
def display_board(brd)
  system 'clear'
  puts "You're a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}"
  puts ""
  puts "     |     |"
  puts "  #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "     |     |"
  puts "-----+-----+------"
  puts "     |     |"
  puts "  #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "     |     |"
  puts "-----+-----+------"
  puts "     |     |"
  puts "  #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "     |     |"
end
# rubocop:enable Metrics/AbcSize

def init_board
  new_brd = {}

  (1..9).each { |num| new_brd[num] = INITIAL_MARKER }
  new_brd
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def player_places_piece!(brd)
  square = ""
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Not a valid answer."
  end
  brd[square] = PLAYER_MARKER
end
# brd.values_at(*line).count(marker) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
def square_at_risk?

end 


def possible_winning_line(brd, marker)
  WINNING_LINES.select do |line|
     brd.values_at(*line).count(marker) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  end.first

end

def immediate_threat?(brd, marker)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).count(marker) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  end
  false
end

def protect_threat(brd)

  # winning_line = WINNING_LINES.select do |line|
  #                 brd.values_at(*line).count(PLAYER_MARKER) == 2 && brd.values_at(*line).count(INITIAL_MARKER) == 1
  #                end.first

  possible_winning_line(brd, PLAYER_MARKER).each { |num| brd[num] = COMPUTER_MARKER if brd[num] == INITIAL_MARKER }
end


def find_winning_square(brd)
  

  possible_winning_line(brd, COMPUTER_MARKER).each { |num| brd[num] = COMPUTER_MARKER if brd[num] == INITIAL_MARKER }
end

def computer_places_piece!(brd)
  
  if immediate_threat?(brd, COMPUTER_MARKER)
    find_winning_square(brd)

  elsif immediate_threat?(brd, PLAYER_MARKER)
    protect_threat(brd)
  else
    square = empty_squares(brd).sample
    brd[square] = COMPUTER_MARKER
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    test_array = [brd[line[0]], brd[line[1]], brd[line[2]]]

    return "Player" if test_array.all?(PLAYER_MARKER)
    return "Computer" if test_array.all?(COMPUTER_MARKER)
  end
  nil
end



loop do 

  computer_score = 0
  player_score = 0
  winner = ""

  loop do
    board = init_board
    display_board(board)

    loop do

      display_board(board)
      player_places_piece!(board)

      break if someone_won?(board) || board_full?(board)
      computer_places_piece!(board)
      break if someone_won?(board) || board_full?(board)
    end


    player_score += 1 if detect_winner(board) == "Player"
    player_score += 1 if detect_winner(board) == "Computer"


    display_board(board)


    if someone_won?(board)
      prompt "#{detect_winner(board)} won the round!"
    else
      prompt "It's a tie!"
    end

    if computer_score == 2 || player_score == 2
      winner = detect_winner(board)
      break
    end

    prompt "press any key to continue"
    any_key = gets.chomp
  end

  prompt "#{winner} won the game!"
  prompt "Play again? (y or n)"
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing"
