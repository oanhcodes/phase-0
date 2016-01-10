=begin

#Psuedocode
-Define a method called acct_groups that accepts and array as an argument
-Count the number of people in the list
-Divide list up into groups of 4 or 5 with a minimum of three people
  -IF list has 5 people or less, then everyone is in the same group
  -ELSE the group is more than 5 people
    -IF number of people can be divided by 5 with a remainder of 0 or >=3, 
    divide list into groups of 5
    -IF number of people can be divided by 4 with a remainder of 0 or 3, 
    divide list into groups of 4
    -Figure out solution for numbers that for not return 0 when divided by 5 
    or 4
=end

#Initial Solution
#MVP will have groups in individual arrays

def acct_groups (array)
  array.shuffle!
  group_size = array.length
  if group_size <= 5
   p array
  elsif group_size % 5 == 0 || group_size % 5 >= 3
   p array.each_slice(5).to_a
  elsif group_size % 4 == 0 || group_size % 4 == 3
   p array.each_slice(4).to_a
  else
   p array.shift(3)
   p array.each_slice(5).to_a
  end
end

=begin

Reflection:
1. What was the most interesting and most difficult part of this challenge?
The group size parameters made this challenge interesting for me. It helped
for me think how I might approach the problem in the real world without a
computer and apply that logic to my pseudocode. Without something to test 
against, I had difficulty understanding if I was approaching the problem in 
the right way. With so much room for creativity, I can't help but feel like 
there is a much more efficient & unique way to solve this problem!

2. Do you feel you are improving in your ability to write pseudocode and break 
the problem down?
I feel like I am slowly starting to understand how I need to approach coding 
problems. I am still getting used to learning how to generalize my psuedocode, 
but it gets a little easier each time.

3. Was your approach for automating this task a good solution? What could have 
made it even better?
My solution works, however some of the code looks a bit redundant. I was 
unable to refactor it any further and have it run successfully.

4. What data structure did you decide to store the accountability groups in 
and why?
Each time the code runs, the original array is shuffled so new groups are 
formed. I decided to store my groups in arrays because they each contain a 
simple list.

5.What did you learn in the process of refactoring your initial solution? Did 
you learn any new Ruby methods?
Refactoring is still a bit difficult for me. Since I am still learning, the 
only working solution I am getting so far is pretty close to what my MVP is. I 
learned the .slice method and the enumerable each_slice.
  
=end

