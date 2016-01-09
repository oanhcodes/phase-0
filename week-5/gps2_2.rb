#Refactored Solutions:

hash = Hash.new

#Method to create a list
def create(string,hash)
  string.split(" ").each do |item| 
    hash[item] = 1
  end
end

#Method to add to a list
def add(item, quantity, hash)
  hash[item] = quantity
end

#Method to add multiple items to a list 
#Extra practice calling methods in methods
def add_multiple(string,string_q, hash)
  quantity = string_q.split(" ")
  n = 0
  string.split(" ").each do |food|
      add(food, quantity[n], hash)
      n = n + 1
  end
end

#Method to remove item from list
def remove(item, hash)
  hash.delete(item)
end

#Method to update list
def update(item, new_q, hash)
  hash[item]=new_q
end

#Method to print a pretty list
def pretty(hash)
  hash.each do |key,value|
    puts "#{key}: #{value}"
    end
end

#Test
create("apple banana orange",hash)
add_multiple("lemonade tomatoes onions ice_cream", "2 3 1 4", hash)
remove("lemonade", hash)
update("ice_cream", 4, hash)
pretty(hash)

#Initial Solution
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
# Split input string up by spaces
# Put each item from the input list into the hash
# Set default quantity equal 1
  # print the list to the console [can you use one of your other methods here?]
# output: hash of items

hash = Hash.new

def create(string,hash)
  string.split(" ").each do |item| 
    hash[item] = 1
  end
  puts hash
end

create("carrots apple banana",hash)

# Method to add an item to a list
# input: item name and optional quantity and hash
# steps: Add item and list to hash 
# output: hash

def add(item, quantity, hash)
  hash[item] = quantity
  puts hash
end

add("avocado", 2, hash)


# Method to remove an item from the list
# input: hash and item
# steps: Check if item to delete matches an item in the list and if it does delete the item.
# output: hash

def remove(item, hash)
  hash.delete(item)
  puts hash
end

remove("avocado", hash)


# Method to update the quantity of an item
# input: hash, item, new quantity
# steps: find the item in the list and change its quantity to the new quantity
# output: hash

def update(item, new_q, hash)
  hash[item]=new_q
  puts hash
end

update("carrots", 5, hash)

# Method to print a list and make it look pretty
# input: hash
# steps: Sort the list and then print each item on a different line
# output: A PRETTY list

def pretty(hash)
  hash.each do |key,value|
    puts "#{key}: #{value}"
    end
end
pretty(hash)

=begin

#Reflection
#What did you learn about pseudocode from working on this challenge?
Psuedocode is great for breaking down a problem. I did find it difficult at times to use non-technical to describe how we wanted to approach the certain solutions.

#What are the tradeoffs of using Arrays and Hashes for this challenge?
Hashes were great for returning information in pairs. Arrays were helpful to separate out lists that could be used to fill up elements in a hash.

#What does a method return?
A method returns whatever we ask it to. 

#What kind of things can you pass into methods as arguments?
Anything including other methods!

#How can you pass information between methods?
You can add it as an argument or call it within a method.

#What concepts were solidified in this challenge, and what concepts are still confusing?
It is important to remember that local variables cannot be used outside the method, so creating objects outside a method are important if you want to reuse them.

=end