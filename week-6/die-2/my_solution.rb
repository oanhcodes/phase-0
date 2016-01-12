# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself].
# I spent [1] hours on this challenge.

# Pseudocode

# Input: Array of strings
# Output: A string
# Steps: 
# Create and store a variable for the number of sides that can 
# be used by each method
# Create and store the input of strings as an array that can be 
# used by each method
# IF no strings are given, then an error message should be given


# Initial Solution

class Die
  def initialize(labels)
  	@num_of_sides = labels.length
  	@labels_array = labels
  	if labels == []
  		raise ArgumentError.new("List is empty")
  	end
  end

  def sides
  	return @num_of_sides
  end

  def roll
  	@labels_array.shuffle!
  	return @labels_array[0]
  end
end


# Refectored Solution

class Die
  def initialize(labels)
  	@num_of_sides = labels.length
  	@labels_array = labels
  	raise ArgumentError.new("List is empty") if labels == []
  end

  def sides
  	return @num_of_sides
  end

  def roll
  	return @labels_array.shuffle![0]
  end
end

=begin

Reflection:

What were the main differences between this die class and the last one 
you created in terms of implementation? Did you need to change much logic 
to get this to work?
The main differences between this die class and the last one was I needed 
to create two instance variables, one for the number of sides the die has 
and one for the array of strings. I did this so I could use them with the 
other methods in the class. I did not need to change much to get this Die 
class to work.

What does this exercise teach you about making code that is easily 
changeable or modifiable?
It's awesome! It felt great to be able to reference the work I did last 
week while psuedocoding to break the problem down. By having most of the 
framework completed, this challenge did not take me very long to figure 
out. 

What new methods did you learn when working on this challenge, if any?
I did not learn any new methods, but I was able to implement shuffle, 
which I haven't used often.

What concepts about classes were you able to solidify in this challenge?
Learning how to raise an argument error, the purpose of instance 
variables, and the purpose of defining and initialize method in a class.
	
=end
