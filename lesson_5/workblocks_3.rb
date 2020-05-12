[[1, 2], [3, 4]].map do |arr|
  puts arr.first
  arr.first
end


# #Line     Action            Object           Side Effect   Return Value  Is Return Value Used?
# 1         Map method call   outer array      none           [1,3]         no
# 1-3       each iteration    each sub array    none          arr.first    yes by map
# block
# execution      
#  2        puts method call  each sub array   outputs arr.first nil      no
# 2        first method call  arr.             none           first index of arr  yes
#