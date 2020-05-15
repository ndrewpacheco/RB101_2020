# Each UUID consists of 32 hexadecimal characters, 
#and is typically broken into 5 sections like this 8-4-4-4-12 and represented as a string.

# It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

# Write a method that returns one UUID when called with no parameters.

# hexa is 0-9 and a-f

HEXADECIMALS = (0..9).to_a + ("a".."f").to_a
HEXA_SECTIONS = [8,4,4,4,12]

def uuid

  new_uuid = []
# 8-4-4-4-12

  HEXA_SECTIONS.each do |section|

    section.times do 
      new_uuid << HEXADECIMALS.sample
    end

    new_uuid << "-"
  end

  
  new_uuid.pop
  new_uuid.join
end

p uuid