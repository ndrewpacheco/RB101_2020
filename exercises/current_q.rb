def reversed_number(num)

  reversed_arr = num.to_s.chars.reverse.map {|char| char.to_i}
  size = reversed_arr.size

  highest_zero = 10 ** size

  reversed_arr.map do |num|
    highest_zero /= 10
    num * highest_zero
  end.reduce(:+)
end

p reversed_number(12345)# == 54321
p reversed_number(12213)# == 31221
p reversed_number(456)# == 654
p reversed_number(12000)# == 21 # No leading zeros in return value!
p reversed_number(12003)# == 30021
p reversed_number(1) #== 1