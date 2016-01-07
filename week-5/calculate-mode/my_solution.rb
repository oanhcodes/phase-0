# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself Matt Harris ]

# I spent [1.5] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? An array
# What is the output? (i.e. What should the code return?) An array that returns the element with the greatest number on instances
# What are the steps needed to solve the problem?
=begin
-Look at the array and count the number of times an element occurs within the array
-Store information into a hash
-Identify the largest value and create a variable that holds this number
-If an element is equal to that number, return the element 
-Return the key with the largest value
=end

# 1. Initial Solution
def mode(array)
  word_count = Hash.new
  array.each do |item|
    word_count[item] = array.grep(item).size
  end
    largest_number = word_count.max_by {|x,y| y} #return an array
    largest_number = largest_number[1] #retrieving index 1 of array
  
  answer = []
  word_count.each_pair do |key, value|
    if value == largest_number
      answer << key
    end
  end
  p answer
end


# 3. Refactored Solution
def mode(array)
  word_count = Hash.new
  array.each do |item|
    word_count[item] = array.grep(item).size
  end
  largest_count = word_count.max_by {|item, count| count} 
  largest_count = largest_count[1] 
  
  mode_array = []
  word_count.each_pair do |key, value|
    if value == largest_count
      mode_array << key
    end
  end
  p mode_array
end



# 4. Reflection
=begin
1.Which data structure did you and your pair decide to implement and why?
We decided to create a hash to store each element of the array as a key and the number of its instances as its value. By doing this we were able to identify the largest number on instances that occured in the array and all the keys that shared this value. We also created a new array that contained all the elements of the array with the largest number of instances.

2. Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
Yes, we were able to break down the problem and write down generalized psuedocode. It was helpful to reference this during the challenge.

3. What issues/successes did you run into when translating your pseudocode to code?
We did not run into many problems translating our pseudocode.

4. What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?
I used .grep and .size for the first time. This was incredible helpful because I was unsure of how we would count each item of the array. Using the max_by method helped us identify the largest number of instances without sorting. 
	
=end