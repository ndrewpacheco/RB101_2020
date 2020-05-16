INITIAL_MARKER = " "
PLAYER_MARKER = "X"
COMPUTER_MARKER = "O"
def prompt(msg)
  puts "=> #{msg}"
end

def display_board(brd)
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

def init_board
  new_brd = {}

  (1..9).each {|num| new_brd[num] = INITIAL_MARKER}
  new_brd
end

def empty_squares(brd)
  brd.keys.select {|num| brd[num] == INITIAL_MARKER}
end

def player_places_piece!(brd)
  square = ""
  loop do 
    prompt "Choose a square (#{empty_squares(brd).join(", ")}):"
    square = gets.chomp.to_i
    break if empty_squares(brd).include?(square)
    prompt "Not a valid answer."
  end
  brd[square] = PLAYER_MARKER
end

def computer_places_piece!(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

board = init_board
display_board(board)

player_places_piece!(board)
computer_places_piece!(board)
display_board(board)
