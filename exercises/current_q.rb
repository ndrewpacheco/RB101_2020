# Write a method that takes one argument,
# a string containing one or more words,
# and returns the given string with words that contain five or more characters reversed.
# Each string will consist of only letters and spaces.
 #Spaces should be included only when more than one word is present.




# string with words that contain five or more characters reversed.
  # if words.size > 4, then reverse words

 #Spaces should be included only when more than one word is present.

def reverse_words(words)

  words.split.map do |word|

    word.size > 4 ? word.reverse : word

  end.join(' ')
end


p reverse_words('Professional')          # => lanoisseforP
p reverse_words('Walk around the block') # => Walk dnuora the kcolb
p reverse_words('Launch School')         # => hcnuaL loohcS
