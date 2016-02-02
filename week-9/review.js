
//Release 1: User Stories
/*
1. As a user, I want to create a grocery list.
2. As a user, I want to be able to add items with a specific quantity to my grocery list.
3. As a user, I want to be able to remove items from my grocery list.
4. As a user, I want to be able to update the quantity number for items on my grocery list.
5. As a user, I want my list to be clean and easy to read.
*/


// Release 2: Pseudocode
/*
-Create a function that will add properties and values to a object named grocery list
  -Every item should have a default value of 1 unless otherwise
-Create a function to insert new items and quantity amount to the grocery list
-Create a function to remove items and quantity amount from grocery list
-Create a function that will update quantity of item on list
-Create a function that will print out a clean list
*/

var grocery_list = {}

function make_list(item, quantity, object) {
  object[item] = quantity;
    return grocery_list;
}

console.log(make_list("apples", 2, grocery_list));
