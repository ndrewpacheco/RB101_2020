SUITS = ["Clubs", "Spades", "Hearts", "Diamonds"]
VALUES = ('2'..'10').to_a + ['Jack', 'Queen', 'King', 'Ace']

CARD_RANKING = VALUES.map do |val|
  if val == "Ace"
    [val, [1, 11]]
  elsif ['Jack', 'Queen', 'King'].include?(val)
    [val, 10]
  else
    [val, val.to_i]
  end
end.to_h

def init(deck)
  SUITS.each do |suit|
    VALUES.each { |value| deck << [value, suit] }
  end
end

def greeting
  puts "--------------"
  puts "Welcome to 21!"
  puts "--------------"
end

def deal_card(player_cards, deck)
  new_card = deck.sample
  deck.delete(new_card)
  player_cards << deck.sample
end
# def deal_cards

def display_cards(human_cards, dealer_cards)
  puts "--------------"
  puts "You have:"
  human_cards.each do |card|
    puts "#{card[0]} of #{card[1]}"
  end
  puts ""
  puts "Dealer has:"
  puts "#{dealer_cards[0][0]} of #{dealer_cards[0][1]}"
  puts "and an unknown card"
  puts "--------------"
end

def score(player_cards)
  total = 0

  player_cards.each do |card|
    total += CARD_RANKING[card[0]] unless card[0] == "Ace"
  end

  player_cards.each do |card|
    if card[0] == "Ace"
      total += if total < 11
                 11
               else
                 1
               end
    end
  end
  total
end

def display_scores(human_score, dealer_score)
  puts "Your score is #{human_score}"
  puts "Dealer's score is #{dealer_score}"
end

def busted?(total)
  total > 21
end

def blackjack?(score)
  score == 21
end

deck = []
init(deck)

human_cards = []
dealer_cards = []

deal_card(human_cards, deck)
deal_card(human_cards, deck)
deal_card(dealer_cards, deck)
deal_card(dealer_cards, deck)

greeting

loop do
  display_cards(human_cards, dealer_cards)
  answer = ''
  total = score(human_cards)

  break if busted?(total)
  break if blackjack?(total)
  #   puts "You have Black Jack!"
  #   puts "You won!"
  #   break
  # end

  loop do
    puts "--------------"
    puts "Your score is: #{total}"
    puts "Do you want to hit or stay? Type 'h' for hit, 's' for stay."
    answer = gets.chomp
    break if ['s', 'h'].include?(answer.downcase)
    puts "invalid answer, try again"
  end

  break if answer == 's'
  deal_card(human_cards, deck) if answer.downcase == 'h'
end

#  hit until dealers score is >= 17
unless blackjack?(score(dealer_cards))
  deal_card(dealer_cards, deck) until score(dealer_cards) >= 17
end

# display results
human_score = score(human_cards)
dealer_score = score(dealer_cards)

puts "--------------"
if blackjack?(human_score)
  puts "You have BlackJack! You won!"

else
  display_scores(human_score, dealer_score)

  if busted?(human_score)

    puts "You busted! Dealer won"
  elsif busted?(dealer_score)
    puts "Dealer busted! You won!"

  elsif human_score > dealer_score

    puts "You won!"

  elsif human_score < dealer_score

    puts "Dealer won!"
  else
    puts "It's a tie!"
  end
end
