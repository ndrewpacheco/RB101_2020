#Using the each method, write some code to output all of the vowels from the strings.

VOWELS = ["a", "e", "i", "o", "u"]

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}


hsh.values.each do |value|

  # go through each string in the array, 

  value.each do |str|

    str.chars.each {|char| puts char if VOWELS.include?(char)}
  end
end

