# Given this data structure write some code to return an array 
#containing the colors of the fruits and the sizes of the vegetables. 
#The sizes should be uppercase and the colors should be capitalized.




#output is array
# if fruit
    # get color
    # capitalize it


# if veg

# get size
# upcase it

# retun to array 

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = []

hsh.each_value do |food|

  if food[:type] == 'fruit'
   arr << food[:colors].map {|color| color.capitalize}
  else
    arr << food[:size].upcase
  end

end


p arr == [["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]



