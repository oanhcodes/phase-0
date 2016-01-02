# Largest Integer

# I worked on this challenge by myself.

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

#Pseudocode
#Define method called largest_integer that takes an array as an argument
#Create statement that returns nil if the array is empty
#Sort array from largest to smallest
#Return array[0] to retrieve largest integer

# Your Solution Below
def largest_integer(list_of_nums)
  if list_of_nums == []
  	return nil
  else list_of_nums.sort! {|x,y| y <=> x}
  	return list_of_nums[0]
  end
end

