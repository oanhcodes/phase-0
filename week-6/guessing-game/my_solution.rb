# Build a simple guessing game


# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# Pseudocode

# Input: integer
# Output: symbol, boolean
# Steps: 
=begin
	1. Create a class called GuessingGame
		-Intialize method will take an integer as input
		-Create an instance variable named answer and set it equal to the integer
	2. Create a method called guess that will take an integer as input
		-Create an instance variable named guess_number and set it equal to the integer
		-IF this integer is larger than answer, return high
		-ESLIF this integer is lower than answer, return low
		-ELSE return correct
	3. Identify if the guess is correct
		-IF guess is the same as the answer, return TRUE
		-IF guess is not the same as the answer, return FALSE
=end



# Initial Solution

class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
  	@guess_number = integer
  	if @guess_number == nil
  		p nil
  	elsif @guess_number > @answer
  		p :high
  	elsif @guess_number < @answer
  		p :low
  	else
  		p :correct
  	end
  end

  def solved?
  	@last_guess = guess(@guess_number)
    unless @last_guess == :correct
    	p FALSE
    else
    	p TRUE  
  	end
  end
end 

game = GuessingGame.new(10)
game.solved?



# Refactored Solution
class GuessingGame

  def initialize(answer)
    @answer = answer
  end

  def guess(integer)
  	@guess_number = integer
  	if @guess_number == nil
  		p nil
  	elsif @guess_number > @answer 
  		p :high
  	elsif @guess_number < @answer
  		p :low
  	else
  		p :correct
  	end
  end

  def solved?
  	@last_guess = guess(@guess_number)
    @last_guess == :correct ? true : false #Ternary Operator
  end
end 

game = GuessingGame.new(10)
game.solved?

# Reflection
=begin 
How do instance variables and methods represent the characteristics and 
behaviors (actions) of a real-world object?


When should you use instance variables? What do they do for you?
You should use instance variables if you want to store and use a value 
multiple times within an object. Instance variables can be used by any 
methods inside a class. This can help remove redundancies in your code.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
Ruby will run code from top to bottom while checking for conditional 
statements along the way. This means that Ruby will run a line of code and 
determine if it is true or false. If it is false, it will continue until 
executing code until it reaches a true statement. I did not run into any 
issues with flow control this challenge.

Why do you think this code requires you to return symbols? What are the 
benefits of using symbols?
Since symbols are unique, Ruby can process them faster. Symbols are
identified with a leading colon which makes them easy to identify and read.

=end