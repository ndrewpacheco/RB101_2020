# PROBLEM:

# Given a string, write a method `palindrome_substrings` which returns
# all the substrings from a given string which are palindromes. Consider
# palindrome words case sensitive.

# Test cases:

# palindrome_substrings("supercalifragilisticexpialidocious") == ["ili"]
# palindrome_substrings("abcddcbA") == ["bcddcb", "cddc", "dd"]
# palindrome_substrings("palindrome") == []
# palindrome_substrings("") == []



# find out what is meant by sub string
  # a sub string is a section of a string, such as "abc" is a substring of "abcdef"

# take the string input, iterate through each substring of the string

# how to find sub string:

# start at the beginnging character of the string, and analyse the that charcater plus the character beside
# on the next iteration, add the next character, and analyse
# do this till the end of string
# then start on the second character and repeat the processes


#   if we find a palindrome, put it into the output array
w