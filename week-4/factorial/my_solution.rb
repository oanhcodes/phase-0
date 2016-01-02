# Factorial

# I worked on this challenge with Jenna Elamin.

#Psuedocode
# Define method called factorial that accepts (number) as its one argument
# Create a statement that returns 1 if number is 0 or 1
# Use the .times method
	#Multiply every integer starting from 1 up to number

# Your Solution Below
def factorial(number)
	if number <= 1
		return 1
	else
 	product = 1
  	a = 0
  		number.times do
  		a += 1 # starts at 1 and goes up
  		product *=  a
  		end
 	end
  	return product
end

factorial(5)



## Use a times iterator with an iteration variable.
##5.times do |i|
    ##puts i
##end



