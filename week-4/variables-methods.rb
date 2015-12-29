#full name greeting

puts 'What is your first name?'
first_name = gets.chomp

puts 'What is your middle name?'
middle_name = gets.chomp

puts 'What is your last name?'
last_name = gets.chomp

puts 'It is so nice to meet you, ' + first_name + ' ' + middle_name + ' ' + last_name + '!'

#bigger, better, favorite number

puts 'Hey there buddy! What is your favorite number?'
number = gets.chomp

better_number = number.to_i + 1

puts 'You have got to be kidding me! ' + better_number.to_s + ' is a way better number!'

=begin
How do you define a local variable?
	Variables are objects that have been assigned a name and are stored in your computer. The first character of a variable name must be a lowercased letter.

How do you define a method?
	Methods are "things that do stuff" to an object such as a string, integer, or float. 

What is the difference between a local variable and a method?
	Local variables are assigned names for objects in Ruby. Methods do things to objects. You can avoid repetition in your code if you build your own method.

How do you run a ruby program from the command line?
	Once you are in right directory, you need to call ruby file_name.rb
	
How do you run an RSpec file from the command line?
	Once you are in the right directory, you need to call rspec spec-file-name.rb.

What was confusing about this material? What made sense?
	I ran into errors when defining methods because I added puts into the method which always returned nil. Once I removed the puts from the method and used it only before calling the method, the program worked. So far, basic arithmetic in Ruby makes a lot of sense to me.
	
=end

