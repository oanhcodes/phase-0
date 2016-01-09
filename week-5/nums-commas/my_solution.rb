# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? A positive integer
# What is the output? A comma seperated integer
# What are the steps needed to solve the problem?

# Define a method called separate_comma that accepts one argument (positive integer)
# Count the number of digits in the integer by converting integer into an array of strings
#  -IF the number is less than 3, return the integer
#  -ELSIF the number is greater than 3, insert comma(s)
#    -Include a comma every 3 digits from the right
#    -If the length % 3 = 1, start commas at index 1
#    -If the length % 3 = 2, start commas at index 2
#    -If the length % 3 = 0, start commas at index 3


# 1. Initial Solution
def separate_comma(integer)
  string_array = integer.to_s.split(//)
  length = string_array.length
  x = length/3

  if length < 4
    integer = integer.to_s
  elsif length % 3 == 1
    n = 1
      x.times do
      integer =  string_array.insert(n, ",").join
      n = n + 4
      end
  elsif length % 3 == 2
    n = 2
      x.times do
      integer =  string_array.insert(n, ",").join
      n = n + 4
      end    
  else length % 3 == 0
    n = 3
    x = x - 1
      x.times do
      integer =  string_array.insert(n, ",").join
      n = n + 4
      end
  end
  p integer
end


# 2. Refactored Solution
def separate_comma(integer)
  string_array = integer.to_s.reverse.split(//)
  length = string_array.length
  x = length/3
  
  if length < 4
    p integer.to_s
  elsif length % 3 == 0
    n = 3
    x = x - 1
      x.times do
      integer =  string_array.insert(n, ",").join
      n = n + 4
      end
    p integer.reverse
  else
    n = 3
      x.times do
      integer =  string_array.insert(n, ",").join
      n = n + 4
      end
    p integer.reverse
  end
end


# 3. Reflection
=begin
#What was your process for breaking the problem down? What different approaches did you consider?

Was your pseudocode effective in helping you build a successful initial solution?

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?

How did you initially iterate through the data structure?
I originally attempted to iterate with a loop that would break when the index was equal to or greater than the length of the number. This failed because the insertion of commas stopped early with large numbers. The length of integer is not an accurate break point for the loop since each comma increases the length of the entire string. After I tried this, I decided that the times iterator would work better for this solution because I can determine the number of commas each integer would need by dividing the integer by 3. It was just


Do you feel your refactored solution is more readable than your initial solution? Why?

=end