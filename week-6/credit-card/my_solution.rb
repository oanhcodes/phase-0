# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Charlie Bliss.
# I spent [1.5] hours on this challenge.

# Pseudocode

# Input: Integer
# Output: True/False
# Steps:

=begin
-Create a credit card Class
  -initialize the class with 1 argument, an integer
-Raise argument error if number of digits doesn't equal 16
-Create a check_card method to break up the numbers into an array of single digits
	-Turn integer into an array of single digits.
	-Reverse the array and double every second digit
	-Break that array into a new array of single digits
	-Find the sum the new array
	  IF the value is divisible by 10 return TRUE
	  ELSE return FALSE
=end


# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin

class CreditCard
  def initialize(number)
    @number = number
    raise ArgumentError.new("Wrong number of digits") if @number.to_s.length != 16
  end
    def check_card
    num_array = @number.to_s.split(//).reverse
    
    num_array.map! do |element|
      element.to_i
    end
    
    num_array.each_index do |i|
      if i % 2 != 0
        num_array[i] *= 2
      end
    end
      
    new_array = num_array.join.split(//)
    new_array.map! do |element|
      element.to_i
    end
    final_count = new_array.inject(:+)
    
    if final_count % 10 == 0
      return true
    else
      return false
    end
  end
end


# Driver Code

new = CreditCard.new(4408041234567901) #=>return true
p new.check_card

new = CreditCard.new(4408041234567906) #=>return false
p new.check_card

new = CreditCard.new(44080412345) #=>return argument error
p new.check_card

=end


# Refactored Solution
class CreditCard
  def initialize(number)
    @credit_card = number
    raise ArgumentError.new("Wrong number of digits") if @credit_card.to_s.length != 16 
  end
  
  def to_integer(array)
     array.map! {|element| element.to_i}
  end
    
  def check_card
    num_array = @credit_card.to_s.split(//).reverse
    
    to_integer(num_array)
    
    num_array.each_index{|i|if i % 2 != 0 
        num_array[i] *= 2 end}
      
    doubled_array = num_array.join.split(//)
    
    to_integer(doubled_array)
    
    sum = doubled_array.inject(:+)
    
    if sum % 10 == 0 
      return true
    else
      return false
    end
  end
end

# Driver Code
=begin

new = CreditCard.new(4408041234567901) #=>return true
p new.check_card

new = CreditCard.new(4408041234567906) #=>return false
p new.check_card

new = CreditCard.new(44080412345) #=>return argument error
p new.check_card

=end


# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
The most difficult part of the challenge for us was to double every other digit 
starting from the very last digit. We knew that we should first to split the 
integer up into single digits and then reverse the order so we could use the 
returned array's index to iterate. We ended up using the each_index method to run 
a code block that would double every other element.

What new methods did you find to help you when you refactored?
We decided to create a method called to_integer that would modify an array's 
elements by converting them to integers. We called this method within the 
check_card method twice. The each_index and the inject method were new.

What concepts or learnings were you able to solidify in this challenge?
The differences between local and instance variables. Integers cannot but split, 
but strings can. And strings with number values cannot be added. The ! modifies 
the original array. 
=end