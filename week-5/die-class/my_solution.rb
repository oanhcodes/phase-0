# Die Class 1: Numeric

# I worked on this challenge [by myself ]

# I spent 2 hours researching and completing this challenge.

# 0. Pseudocode

# Input: new methods, instance variables, 
# Output: integers
# Steps: Create a method called initialize that accepts the number of 
sides as an argument
# Make the number of sides a variable that can be used in multiple 
methods
#IF the number of sides is less than 1, return an ArgumentError message
#Create a method named sides that returns the number of sides
#Create a method that returns a random number between 1 and the number 
of sides

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
An ArgumentError gets raised when an argument is 
wrong/not valid. It is a way to show documentation to the user 
explaining why an argument is not valid.

#What new Ruby methods did you implement? What challenges and successes 
did you have in implementing them?
I used rand to generate a random number with a range between 1 
and the number of sides. I did not have any challenges 
implementing this method,especially after learning about and
using instance variables!

#What is a Ruby class?
A Ruby class is a blueprint that is used to create
objects. It defines what the object does and what it knows.

#Why would you use a Ruby class?
Ruby classes allow you to create a bundle of methods that can be 
used to create the same type of objects. This saves a lot of 
time and helps you avoid making redundancies.

#What is the difference between a local variable and an instance variable?
Local variables can only be used inside the method it was
created in. Instance variables can be used anywhere within its 
class.

#Where can an instance variable be used?
Instance variables can be used by any method, anywhere in the
class it was created.
=end