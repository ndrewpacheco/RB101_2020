my_arr = [[18, 7], [3, 12]].each do |arr|
  arr.each do |num|
    if num > 5
      puts num
    end
  end
end



# Line     Action            Object           Side Effect           Return Value           Is Return Value Used?
# 1           assignment        my_arr       variable assigned,       original array        n
#1 -7   outer block exec     each subarr      none                     original array          
# 1    each method call   [18, 7], [3, 12]]      ???                   original array        yes, it is assigned to my_arr         
# 2       " "               each outer iter       none                  each outer iter       yes
# 3.      comparison         n/a                      none            boolean                 yes as a conditional to puts num
