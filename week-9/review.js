
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

//Initial Solution:

// var groceryList = {}


// function createList(string, object) {
//   var groceryArray = string.split(", ")
//   for(var i = 0; i < groceryArray.length; i++) {
//     groceryList[groceryArray[i]] = 1;
//   }
//   return grocery_list;
// }


// function addItem(item, quantity, object) {
//   object[item] = quantity;
//     return groceryList;
// }

// function removeItem(item, object) {
//   delete groceryList[item];
//   return groceryList;
// }

// function updateItemNum(item, quantity, object) {
//   object[item] = quantity;
//   return groceryList;
// }

// function printList(object) {
//   return console.log(object);
// }

// createList("Apples, Bananas, Oranges, Bread, Milk", groceryList);
// addItem("Lemonade", 2, groceryList);
// addItem("Tomatoes", 3, groceryList);
// addItem("Onions", 1, groceryList);
// addItem("Ice_Cream", 4, groceryList;
// removeItem("Lemonade", groceryList);
// updateItemNum("Ice_Cream", 1, groceryList);
// printList(groceryList);

//Refactored Solution:

var groceryList = {}


function createList(string, object) {
  var groceryArray = string.split(", ")
  for(var i in groceryArray) {
    groceryList[groceryArray[i]] = 1;
  }
  return groceryList;
}

function addUpdate(item, quantity, object) {
  object[item] = quantity;
    return groceryList;
}

function removeItem(item, object) {
  delete groceryList[item];
  return groceryList;
}


function printList(object) {
  return console.log(object);
}

createList("Apples, Bananas, Oranges, Bread, Milk", groceryList);
addUpdate("Lemonade", 2, groceryList);
addUpdate("Tomatoes", 3, groceryList);
addUpdate("Onions", 1, groceryList);
addUpdate("Ice_Cream", 4, groceryList);
removeItem("Lemonade", groceryList);
addUpdate("Ice_Cream", 1, groceryList);
printList(groceryList);

//Reflection:
/*
What concepts did you solidify in working on this challenge? (reviewing the passing 
of information, objects, constructors, etc.)
How to add, update, and remove properties from a javascript object.

What was the most difficult part of this challenge?
I did not have many problems creating a javascript solution for this challenge.

Did an array or object make more sense to use and why?
An object made the most sense because it contains property value pairs. This is 
perfect for a grocery list with items and quantities since objects properties are 
easy to add and update.
*/
