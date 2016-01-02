# Count Between

# I worked on this challenge by myself.

# count_between is a method with three arguments:
#   1. An array of integers
#   2. An integer lower bound
#   3. An integer upper bound
#
# It returns the number of integers in the array between the lower and upper bounds,
# including (potentially) those bounds.
#
# If +array+ is empty the method should return 0

# Your Solution Below
#Pseudocode
#Define a method called count_between that accepts 3 arguments: one array and two integers that with be used as a range
#Create and empty array called my_array
#Use each to see whether or not each value of the array is within the range
	# If true, create an array for each integer
	#use .concat to combine this array with my_array
#Use .length on my_array to return corret number of integers

def count_between(list_of_integers, lower_bound, upper_bound)
  if list_of_integers == [] || upper_bound < lower_bound
  	return 0
  else
  	my_array = []
  	list_of_integers.each do |integer|
  		if (integer >= lower_bound) && (integer <= upper_bound)
  			a = [integer]
  			my_array.concat(a)
  		end
  	end
  	return my_array.length
  end
end

count_between([-10, 1, 2], 0, 100)