# Write a method that takes a non-empty string argument,
# and returns the middle character or characters of the argument.
# If the argument has an odd length, you should return exactly one character.
# If the argument has an even length, you should return exactly two characters.

# Examples:

def center_of(str)
  size = str.size
  mid_char = size / 2

  if size.odd?
    #return mid_char with 1 character
    str[mid_char]
  else
    #return mid_char with 2 characters
  # return value middle char(s) of the arg
    str[mid_char - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'