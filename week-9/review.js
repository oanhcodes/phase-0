
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


function create_list(string, object) {
  var grocery_array = string.split(", ")
  for(var i = 0; i < grocery_array.length; i++) {
    grocery_list[grocery_array[i]] = 1;
  }
  return grocery_list;
}


function add_item(item, quantity, object) {
  object[item] = quantity;
    return grocery_list;
}

function remove_item(item, object) {
  delete grocery_list[item];
  return grocery_list;
}

function update_item_num(item, quantity, object) {
  object[item] = quantity;
  return grocery_list;
}

console.log(create_list("Apples, Bananas, Oranges, Bread, Milk", grocery_list));
console.log(add_item("Chocolate", 2, grocery_list));
console.log(remove_item("Apples", grocery_list));
console.log(update_item_num("Bananas", 5, grocery_list))
