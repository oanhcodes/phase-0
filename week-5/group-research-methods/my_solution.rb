# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 3
def my_array_sorting_method(source)
  source.sort {|a,b| a.to_s <=> b.to_s }
end

def my_hash_sorting_method(source)
  source.sort_by {|key, value| value}
end

p my_hash_sorting_method(my_family_pets_ages)
p my_family_pets_ages

=begin
1. Identify and describe the Ruby method(s) you implemented

I used the enumerable sort and sort_by method.

2. Teach your accountability group how to use the methods

Sort:
To define a method that sorts an array without modifying the existing data, I used the enumerable method called sort...no suprises here! This method sorts the items by comparing themselves to eachother using with the <=> operator or logic supplied in a code block. Since the array i_want_pets contains strings and integers, the items cannot be compared directly with eachother using the <=> operator. I used a code block that converted the array items to strings then compared themselves to eachother. After all the items are sorted, this order is then applied to the original array. The returned array is a new object. The original array will not get permanently modified unless sort! (with a bang) is used.

Sort_by:
To define a method that sorts a hash, I used the enumerable method, sort_by. The sort_by method only required one paramenter so I used this because I only needed to sort by the hash value.

3. Share any tricks you used to find and decipher the Ruby Docs
No real tricks besides make sure you are looking at the right Ruby Doc version! I also skim the methods available for each class and write down ones that could be helpful for solving each problem.

=end
