# Write a method that takes a string argument and returns a new string
# that contains the value of the original string with
# all consecutive duplicate characters collapsed into a single character.
#You may not use String#squeeze or String#squeeze!.

# Examples:


# compare n and n + 1
# if they aren't the same then push n into new string



def crunch(str)
  new_str = ''


  str.chars.each_with_index do |char, idx|

    new_str << char unless str[idx] == str[idx + 1]
  end

  new_str

end

p crunch('ddaaiillyy ddoouubbllee')# == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''