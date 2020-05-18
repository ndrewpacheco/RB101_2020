#Write a method called joinor that will produce the following result:


# input: array, two defualts

def joinor(arr, grammar = ", " , or_str = "or")
  return puts "#{arr[0]} #{or_str} #{arr[1]}" if arr.size < 3

  output_str = ""

  arr.each do |num|
    if num == arr.last
      output_str << "#{or_str} #{num}"
    else
      output_str << "#{num}#{grammar}"
    end
  end


  puts output_str
end

joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"