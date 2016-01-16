# Your Names
# 1)Matt B.
# 2)Linda H.

# We spent [1] hours on this challenge.

# Bakery Serving Size portion calculator.

def serving_size_calc(item_to_make, num_of_ingredients)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7} 
 
  raise ArgumentError.new("We don't have that item in stock. Thanks for the suggestion!") if library.has_key?(item_to_make) == false

 serving_size = library[item_to_make] 
 remaining_ingredients = num_of_ingredients % serving_size

  if remaining_ingredients == 0
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
  else
    return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{remaining_ingredients} leftover ingredients."
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
=begin
What did you learn about making code readable by working on this challenge?
It is preferable to keep if statements to one line if possible. When refactoring, using additional methods can cut down on redundant code.

Did you learn any new methods? What did you learn about them?
I learned the has_key? method which will look at all the keys in a hash. This helped us 
identify whether or not the item_to_make was in the library hash.

What did you learn about accessing data in hashes? 
You can get the value of the hash by calling the key using the [] method.

What concepts were solidified when working through this challenge? 
The reasoning to use or not to raise an argument error. While refactoring, my partner 
reminded me we can use the [] method to get a value for a specific hash key.

=end