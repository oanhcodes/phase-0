
// JavaScript Olympics

// I paired with Tyler Doershuck on this challenge.

// This challenge took me [#] hours.


// // Warm Up
/* Pseudocode

Bulk Up
// create an array
// function that takes the array an argument
// iterate through array to add 'win' property

Reverse
// create a function
// function accepts a string as argument
// use method to reverse string

Even Numbers
// create a function that accepts array argument
// iterate through array
// use modulus to determind even or odd
//  put even into new array
//  return new array
*/

// Bulk Up
var olympic_array = [
  {
    name: "Sarah Hughes",
    event: "Ladies Singles",
  },
 {
    name: "Michael Phelps",
    event: "Mens 100m Freestyle",
  },
  {
    name: "Usain Bolt",
    event: "Mens 100m Dash",
  }
];

function add_won (array) {
  for (var i = 0; i < array.length; i++)
  {var add_prop = olympic_array[i].name + " won the " + olympic_array[i].event;
  array[i].win = add_prop;
  }
  return olympic_array;
}
console.log(add_won(olympic_array))


// Jumble your words
var string = "Reverse Me"

function reverse(string)
{return string.split("").reverse().join("");}

console.log(reverse(string))



// 2,4,6,8

var numbers = [1,4,5,6,10,13,14];
var return_array = [];

function even(array) {
  for (var i = 0; i < array.length; i++ ) {
    if (array[i] % 2 === 0) {
       return_array.push(array[i]);
      // return_array = array[i];
    } 
   
  }
   return return_array;
}

console.log(even(numbers))



// "We built this city"


var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)

// Example can be run directly in your JavaScript console

function Athlete(name, age, sport, quote){
    this.name = name;
    this.age = age;
    this.sport = sport;
    this.quote = quote;
    };

/* Reflection
What JavaScript knowledge did you solidify in this challenge?
How to loop with FOR and making sure to return things since javascript does not 
have implicit returns.

What are constructor functions?
Constructor functions create new javascript objects. Every object created with new is an instance of the constructor.

How are constructors different from Ruby classes (in your research)?
Javascript constructors create new objects but do not define the object's behavior in the same function.
*/

