#Given the following data structure, return a new array
# containing the same sub-arrays as the original 
#but ordered logically by only taking into consideration the odd numbers they contain.

# sort through sub arrays, but only sort with odd numbers


# only sort if a and b are both odd
# else return 0

arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]


arr.sort_by! {|x| x.select {|num| num.odd?}}



# The sorted array should look like this:
p arr == [[1, 8, 3], [1, 6, 7], [1, 4, 9]]
# Show Solution