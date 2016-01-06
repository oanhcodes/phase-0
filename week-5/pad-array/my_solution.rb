# Pad an Array

# I worked on this challenge [with Charlie Bliss]

# I spent [1.5] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode
=begin
# What is the input?
The input will be an array, an integer, and any object used for padding the array

# What is the output? (i.e. What should the code return?)
an array with as many elements as the integer states, padded by the object used for padding. 

# What are the steps needed to solve the problem?
DESTRUCTIVE PAD

-find the length of the array
-compare the length to the minimum size
-IF the length of the array is greater than or equal to min size, return the array
-ELSE return the padded array
-UNTIL the array meets the length requirments, insert padding at the end

Non-destructive

=end

# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  length = array.length
  if length >= min_size
    return array
  else
  until array.length == min_size
    return array.push(value = nil)
  end
  end  
end


def pad(array, min_size, value = nil) #non-destructive
  new_array = array.dup
  length = new_array.length
    if length >= min_size
      return new_array
    else
    until new_array.length == min_size
      new_array.push(value)
    end
  end  
  return new_array
end

# 2. Refactored Solution

#Destructive

def pad_refact!(array, min_size, value = nil)
  array.fill(value, array.length..min_size)
end

#Non-Destructive

def pad_refact(array, min_size, value = nil)
  new_array = array.dup
  new_array.fill(value, new_array.length..min_size)
end

#Reflection

=begin
1. Were you successful in breaking the problem down into small steps? Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
  I think we did a pretty good job breaking the problem down. Our solution reflects the plan we laid out in the psuedocode. I need to work on writing more generalized psuedocode.

2.Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
  Our initial solution for the method pad! was not successful because we created an infinite loop. The infinite loop was caused because we were telling the program to run until length (an integer) was equal to the min_size (also an integer). We changed the statement to use array.length instead of the variable length. That way the value of array.length would increment up until it was equal to the min_size value.


3. When you refactored, did you find any existing methods in Ruby to clean up your code?
  We found a method called fill. This method definitely streamlined our code!

4. How readable is your solution? Did you and your pair choose descriptive variable names? 
  I think our solution initial solution readable. Our variables are simple and describe what it contains.

5. What is the difference between destructive and non-destructive methods in your own words? 
  Destructive methods permanently modify the original object. Non-destructive methods return a new object and do not affect the original object at all.
	
=end