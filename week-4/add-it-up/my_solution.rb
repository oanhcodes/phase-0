# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself Jenna ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: Array 
# Output: Sum total of all the array indexes added together
# Steps to solve the problem.
# Define method total
# Create an argument that accepts an array
# Take each index of the array and add to the each sum
# Return the sum


# 1. total initial solution
def total(array)
 sum = 0
 array.each do |x|
 sum += x
 end
 return sum
end


# 3. total refactored solution
def total(array)
	return array.inject {|sum, x| sum + x}
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array, .capitalize, add a period.
# Output: A sentence starting with a capital letter and ending in a period.
# Steps to solve the problem.

#Pseudocode
#Define a method called sentence maker that accepts strings as an argument
#Capitalize first index of array
#Replace first index of array with new capitalized word
#Join the array with spaces and a period at the end


# 5. sentence_maker initial solution
def sentence_maker(array)
  first_word = array[0]
  new_array = first_word.capitalize
  array.shift
  array.unshift(new_array)
  return array.join(" ") + "."
end

sentence_maker(["an", "apple", "a", "day"])

# 6. sentence_maker refactored solution
def sentence_maker(array)
  first_word = array[0]
  new_array = first_word.capitalize
  array[0].replace(new_array)
  return array.join(" ") + "."
end

sentence_maker(["an", "apple", "a", "day"])

