def upper_snake(str)
  words = str.split
  current_word = 0

  loop do
    
    break if current_word == words.size

    words[current_word].upcase!


    current_word += 1
  end

  words.join('_')
end
sentence = 'The sky was blue'
p upper_snake(sentence) # => 'TheSkyWasBlue'
# -----
# 1)D 1
# 2)ABCD n
# 3)ACD 2
# 4)A 3
# 5)B 4
# 6)B 5
# 7)C 6
# 8)BD 7
# 9)BD n
# 10)ABC 
# 11)BC
# 12)B
# 13 B
# 14 C
# 15 A
# 16 AC
# 17 




