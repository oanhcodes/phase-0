#Attr Methods

# I worked on this challenge by myself

# I spent 3 hours including reading and researching on this challenge.

# Pseudocode

# Input: Intialize methods, instance variables
# Output: A puts statement
# Steps: 
=begin 
-Intialize NameData class with an instance variable equal to my name
-Intialize Greeting with an instance of NameData. 
	-Make this a new instance variable
-Create an instance method for Greetings that returns a greeting
	-Call the method to retreive my name
=end

class NameData
  attr_reader :name
  
  def initialize
  @name = "Linda"
  end
end

class Greetings
  def initialize
   @name_data = NameData.new
  end
  
  def salutation
    puts "#{@name_data.name}, it is so nice to meet you!"
  end 
end

new_greeting = Greetings.new
new_greeting.salutation # => Linda, it is so nice to meet you! 



# Reflection
=begin
Release 1:
What are these methods doing?
The first method, initialize, creates instance variables for age, name, and 
occupation for every new instance of the Profile class. The print_info 
method will return the values assigned for the instance variables age, name 
and occupation. The what_is_age method returns the age and change_my_age 
methods updates the value of age. The what_is_name, change_my_name, 
what_is_occupation, and change_my_occupation do the same thing with their 
respective values.

How are they modifying or returning the value of instance variables?
The what_is methods are reader methods that return the value of the 
instance variables. The change_my methods are writer methods that take a 
new value and update the original instance value.

Release 2:
What changed between the last release and this release?
The what_is_method changed names and was simplified by using the attr_reader 
method. Now #.age will return the same value at what_is_age in the previous 
release.

What was replaced?
The code:
def what_is_age
	@age
end

was replaced with ===> attr_reader :age

Is this code simpler than the last?
In a way it is simpler, however, there are still a lot of redundancies. 
Changing the what_is_name and what_is_occupation methods to attr_reader 
methods will make it easier to read.

Release 3:
What changed between the last release and this release?
The change_my_age method was removed and replaced with an attr_writer method. 
To change the age, you can now use the .age = new age.

What was replaced?
def change_my_age
	@age
endz

was replaced with ===> attr_writer :age

Is this code simpler than the last?
Yes, this code is simpler than the last. The other methods for name and 
occupation should be refactored too to clean up the code.

Release 4:
I refactored code with attr_accessor method.

Release 5:
See solution

Release 6:
What is a reader method?
A reader method allows you to read an instance variable and return its value.

What is a writer method?
A writer method lets you assign a value to an instance variable.

What do the attr methods do for you?
They provide a shortcut when writing code, making it easier to communicate 
between methods.

Should you always use an accessor to cover your bases? Why or why not?
What is confusing to you about these methods?
You should not always use accessor because there are times when creating a 
writer method is uncessary. For example, if you have an instance variable in 
your program that is constant, you probably don't want a method available for 
it to get modified.
	
=end