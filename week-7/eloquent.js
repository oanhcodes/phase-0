// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var color = "blue";
console.log(color)

var color_1 = "orange", color_2 = "red";
console.log(color_1 + "-" + color_2)

//Favorite food program
var favFood = prompt("What is your favorite food?");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board
/*Write a program that uses console.log to print all the numbers from 1 to 100, with two exceptions. For numbers divisible by 3, print "Fizz" instead of the number, and for numbers divisible by 5 (and not 3), print "Buzz" instead.

When you have that working, modify your program to print "FizzBuzz", for numbers that are divisible by both 3 and 5 (and still print "Fizz" or "Buzz" for numbers divisible by only one of those). */

/*Pseudocode
Use a loop to print numbers from 1 - 100
IF number is divisible by 3, print "Fizz" instead of number)
ELSE IF number is divisible by 5, print "Buzz" instead of number
ELSE print number
*/

for (var number = 1; number <= 100; number += 1) {
  if (number % 3 == 0)
    console.log("Fizz");
  else if (number % 5 == 0)
    console.log("Buzz");
  else
    console.log(number);
}

//Print "FizzBuzz" for numbers divisible by 3 and 5

for (var number = 1; number <= 100; number += 1) {
  if (number % 3 == 0 && number % 5 == 0)
    console.log("FizzBuzz");
  else if (number % 3 == 0)
    console.log("Fizz");
  else if (number % 3 == 0)
    console.log("Buzz");
  else
    console.log(number);
}


// Functions

// Complete the `minimum` exercise.
function min(a, b) {
  if (a < b)
    return a;
  else
    return b;
}

console.log(min(0, 10));
// → 0
console.log(min(0, -10));
// → -10


// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.
