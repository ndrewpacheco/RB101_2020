def triangle(num)
  working_line = [" "] * num

  num.times do |n|
    working_line << "*"
    working_line.shift
    puts working_line.join
  end
end



triangle(5)

#     *
#    **
#   ***
#  ****
# *****
triangle(9)

#         *
#        **
#       ***
#      ****
#     *****
#    ******
#   *******
#  ********
# *********