# The computer currently picks a square at random.
# That's not very interesting. Let's make the computer defensive minded,
# so that if there's an immediate threat, then it will defend the 3rd square. 
# We'll consider an "immediate threat" to be 2 squares marked by the opponent in a row.
# If there's no immediate threat, then it will just pick a random square.

WINNING_LINES = [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
                [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
                [[1, 5, 9], [3, 5, 7]]

def detect_winner(brd)
  WINNING_LINES.each do |line|
    test_array = [brd[line[0]], brd[line[1]], brd[line[2]]]

    return "Player" if test_array.all?(PLAYER_MARKER)
    return "Computer" if test_array.all?(COMPUTER_MARKER)
  end
  nil
end

def immediate_threat?(brd)
  WINNING_LINES.each do |line|
    return true if brd.values_at(*line).count(PLAYER_MARKER) == 2
  end
  false
end


def computer_places_piece!(brd)
  # if threat, immediate_threat(brd)
  square = empty_squares(brd).sample
  brd[square] = COMPUTER_MARKER
end

# go through each winning line, 

# if there are two player markers in a winning line, take the third marker

# count method 


