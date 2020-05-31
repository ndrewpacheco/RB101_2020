# Letter Counter (Part 1)
# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Examples


# sort through string
# take the size of each str
#hsh if else statement

#
def word_sizes(str)
  str = delete_nonalpha(str)
  hsh = {}

  str.split.each do |word|


    if hsh[word.size].nil?
      hsh[word.size] = 1
    else
      hsh[word.size] += 1
    end
  end
  hsh
end
# Modify the word_sizes method from the previous exercise
#to exclude non-letters when determining word size.
#For instance, the length of "it's" is 3, not 4.

# Examples

# seperate method that deletes non alpha chars

def delete_nonalpha(str)
  str.split.map do |word|
    word.chars.select do |char|
      ("A".."Z").include?(char.upcase)
    end.join
  end.join(' ')
end


p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}