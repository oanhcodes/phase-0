# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts: 1
# ============================================================
p array[1][1][2][0]

# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts: 13
# ============================================================
#p hash[outer][inner]["almost"][3]
#hash[outer:][inner]["almost"][3]
#hash[outer:][inner]["almost"][3]
#hash[inner]["almost"][3]
#hash["almost"][3]
#hash[outer:]
#p hash[0][0]
#p hash[outer:inner:"almost"][3]
#p hash[outer:][inner:]["almost"][3]
#hash[outer:,inner:]["almost"][3]
#hash[outer:[inner:]["almost"][3]
#hash.each do |element|
  #if element.kind_of?(Hash)
    #element.each {|key, value| puts value}
  #end
#end
#hash[:outer]
p hash[:outer][:inner]["almost"][3]
# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts: 4
# ============================================================
#p nested_data[array:][1][hash:]
#p nested_data[array:[1]][hash:]
#nested_data.each do |element|
  #if element.kind_of?(Hash)
    #element.each {|key,value| p value}
  #end
#end
#nested_data.each do |element|
  #if element.kind_of?(Array)
    #p element
  #end  
#end
#p nested_data.class
    
p nested_data[:array ][1][:hash]
    
# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

#Destructive Method

number_array = [5, [10, 15], [20,25,30], 35]

number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|inner_array_element| p inner_array_element + 5}
  else
    p element + 5
  end
end

# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

#Destructive method

startup_names.map! do |element|
  if element.kind_of?(Array)
    element.map! do |inner_array|
      if inner_array.kind_of?(Array)
        inner_array.map! {|innermost_array| p innermost_array << "ly"}
      else
        p inner_array << "ly"
    end 
  end
  else
    p element << "ly"
  end
end
end

=begin
What are some general rules you can apply to nested arrays?
1) Symbols have leading colons. This means they should be called like this :object.
2) Hashes can be called with keys and Arrays with index numbers
3) You can use .class method to identify the type of objects that are in the array
4) Puts will iterate over all the inner arrays

What are some ways you can iterate over nested arrays?
The method we used was to first identify the types of collection objects that 
were present. We did this by using the the method kind_of? to identify and 
iterate on specific types of elements inside the nested array.

Did you find any good new methods to implement or did you re-use one you were
already familiar with? What was it and why did you decide that was a good option?
We used the map! method to create a destructive method that would modify the 
array we were given. We originally used the each method to iterate over the 
array, however, the original array was returned since the changes weren't 
maintained. Using the map! method solved this problem for us.
=end

