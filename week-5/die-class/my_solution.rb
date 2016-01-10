# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent 2 hours researching and completing this challenge.

# 0. Pseudocode

# Input: new methods, instance variables, 
# Output: integers
# Steps: Create a method called initialize that accepts the number of sides as an argument
# Make the number of sides a variable that can be used in multiple methods
#IF the number of sides is less than 1, return an ArgumentError message
#Create a method named sides that returns the number of sides
#Create a method that returns a random number between 1 and the number of sides

# 1. Initial Solution

class Die
  def initialize(sides)
    @num_of_sides = sides
    if sides < 1 
    	raise ArgumentError.new("Only numbers are greater than one allowed")
    end
  end

  def sides
    return @num_of_sides
  end

  def roll
  	@random_num = rand(1..@num_of_sides)
    return @random_num
  end
end

#test
die=Die.new(6)
die.sides
die.roll

# 3. Refactored Solution
class Die

  def initialize(sides)
    @num_of_sides = sides
		raise ArgumentError.new("Only allow numbers greater than one") if sides < 1 
  end

  def sides
    @num_of_sides
  end

  def roll
  	@random_num = rand(1..@num_of_sides)
  end
end

# 4. Reflection
=begin
#What is an ArgumentError and why would you use one?

#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

#What is a Ruby class?

#Why would you use a Ruby class?

#What is the difference between a local variable and an instance variable?

#Where can an instance variable be used?

=end