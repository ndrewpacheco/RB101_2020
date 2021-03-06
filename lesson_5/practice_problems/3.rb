#For each of these collection objects demonstrate how you would reference the letter 'g'.

p arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
p arr1.last.last.last

p arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
p arr2.last[:third].first

p arr3 = [['abc'], ['def'], {third: ['ghi']}]
p arr3.last[:third].first[0]

p hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
p hsh1['b'].last

p hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
p hsh2[:third].key(0)