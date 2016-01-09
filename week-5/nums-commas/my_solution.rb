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
What was your process for breaking the problem down? What different approaches did you consider?

I broke up the problem by thinking about: 
1)How can I separate the digits in integer?
2)How many numbers make up the integer?
3)Integers with less than 4 numbers do no need a comma
4)Integers with more than 4 numbers need commas every 3 numbers from the end

I decided to approach the problem by converting the integer into an array of split strings. After getting the length of the integer, I was able to create a statement that returned the original integer as a string if the length was less than 4. I first tested out add commas by using the insert method to add a "," at the -4 index. Since integers with more than 7 numbers need two or more commas, I knew that I would need to use an iterator. I first tried the loop method but settled on the times iterator since I figure out how many commas every integer needed based on the length/3.

Was your pseudocode effective in helping you build a successful initial solution?
Yes, my pseudocode was very effective in helping me breakdown the problem. Even though I spent a lot of time trying different iterations, it would have taken a lot longer if I didn't know what conditions I needed to have for my code blocks.

What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
Reverse was the new method I used. This simplified my code because I was able to add commas starting from the 3 index regardless of the length of the integer. I still see a lot of redundancies in my refactored code, however, I wanted to keep the solution to still resemble my intial solution. 

How did you initially iterate through the data structure?
I originally attempted to iterate with a loop that would break when the index was equal to or greater than the length of the number. This failed because the insertion of commas stopped early with large numbers since. The length of integer was not an accurate break point for the loop since each added comma increased the length of the entire array. After I tried this, I decided that the times iterator would work better for this solution because I can determine the number of commas each integer would need by dividing the integer by 3.

Do you feel your refactored solution is more readable than your initial solution? Why?
I do think my refactored solution is more readable because it is more concise. The code block in the times iterator is redundant, however, I was unable to clean it up further without running errors.

=end