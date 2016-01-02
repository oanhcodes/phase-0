# Smallest Integer

# I worked on this challenge [by myself, with: ].

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

#Psuedocode
#define method called smallest_integer
#create statement to address empty array returning nil
#sort items in an array from smallest to largest
#return array[0] to return smallest number

# Your Solution Below
def smallest_integer(array)
	if array == []
	  return nil
	else array.sort!
  	  return array[0]
    end
end

#Holy shit it worked.