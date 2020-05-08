#Create a hash that expresses the frequency with which each letter occurs in this string:

statement = "The Flintstones Rock"
#
#
#{ "F"=>1, "R"=>1, "T"=>1, "c"=>1, "e"=>2, ... }

count_hsh = {}

statement.chars.each do |char|

  count_hsh[char] = statement.count(char) 

end

p count_hsh

result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

p result