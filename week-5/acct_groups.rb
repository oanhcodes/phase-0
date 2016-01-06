#Psuedocode

=begin 
-Define a method that accepts three arguments
	-Arguments: Array, minimum number, maximum number
-Count the number of people in the list
-Divide counter number by 3, 4, 5 to determine group size
=end

#Initial Solution


def acct_groups (array)
	array.shuffle
    p group_size = array.count
  if group_size <= 5
    p array
  elsif group_size % 5 == 0 || group_size % 5 >= 3
  	p array.each_slice(5).to_a
  elsif group_size % 4 == 0 || group_size % 4 >= 3
  	p array.each_slice(4).to_a
  else
  	p array.shift(3).to_a
  	p array.each_slice(5).to_a
  end
end

acct_groups (["Linda","b","a","2","5","a","9","a","space","4","a","a","a","monkey","a","x","a","k","a","7","4","a"])
