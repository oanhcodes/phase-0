// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: John Seo

/* Pseudocode
-Create a function called addComma that accepts one Number argument
-Find the length of the Number
-Find number of commas need by dividing length by 3
-IF length is <= 3, return length
-ELSIF length of number % 3 == 1, add commas starting at index 1
-ELSIF length of number % 3 == 2, add commas starting at index 2
-ELSE length of number % 3 == 0, add commas starting at index 3
	-Subtract one comma from num of commas to remove unnecessary comma at end
-Iterate with a FOR loop to add commas
*/

//Initial Solution
// function addComma(number) {
//     var length = number.toString().length
//     var num_of_commas = Math.floor(length/3)
//     var num_array = number.toString().split("")
//      if (length <= 3)
//        return number;
//      else if (length % 3 == 1)
//        {for(var i = 1; i < length + num_of_commas; i += 4)
//        num_array.splice(i, 0, ",");
//        return num_array.join("");}
//      else if (length % 3 == 2)
//        {for(var i = 2; i < length + num_of_commas; i += 4)
//         num_array.splice(i, 0, ",");
//         return num_array.join("");}
//      else (length % 3 == 0)
//        {for(var i = 3; i < (length + (num_of_commas-1)); i += 4)
//         num_array.splice(i, 0, ",");
//         return num_array.join("");}
// }

// Refactored Solution

function addComma(number) {
    var length = number.toString().length
    var num_of_commas = Math.floor(length/3)
    var num_array = number.toString().split("")
     if (length <= 3) 
       return number;
     switch (length % 3) {
  	 case 1:
       for(var i = 1; i < length + num_of_commas; i += 4)
       num_array.splice(i, 0, ",");
       return num_array.join("");
       break;
     case 2:
       for(var i = 2; i < length + num_of_commas; i += 4)
       num_array.splice(i, 0, ",");
       return num_array.join("");
       break;
     case 0:
       for(var i = 3; i < (length + (num_of_commas - 1)); i += 4) 
       num_array.splice(i, 0, ",");
       return num_array.join("");
       break;
     } 
 }


// Your Own Tests (OPTIONAL)
// This is driver code. Will add tests later if I have time!
console.log(addComma(100))
console.log(addComma(1000))
console.log(addComma(10010))
console.log(addComma(100101))
console.log(addComma(1001012))
console.log(addComma(1001012232))
console.log(addComma(100101223432435325252))


/* Reflection

// What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
I do not think our approach to breaking down the problem was different from 
the perspective from Javascript. We did run into issues while writing code 
that made us step back and think about the correct Javascript syntax. It took a lot of trial and error to figure out what methods were available, how to use the methods, and when to use {} and (). We made a big breakthrough after no being able to make the IF/ELSE statement work (because of missing {}) by remembering the Javascript switch/case statement.

// What did you learn about iterating over arrays in JavaScript?
We ran into problems with our IF/ELSE statements in our initial solution because only one ELSE IF statement was being recognized. Adding {} around each FOR statement was necessary to fix this problem. FOR statements need to incude 3 expressions. One expression initializes the loop, one checks to see if the loop needs continue running, and one updates the loop.

// What was different about solving this problem in JavaScript?
We forgot to add var in front our variables at times. That will take some getting used to. We also had to do a bit of trial and error to learn when to use {} and (). The way the FOR statement was formatted also took some getting used to.

//What built-in methods did you find to incorporate in your refactored solution?
We used the Math.floor method on a number we divided to return a whole number. We used the toString method to convert a number into a string. We used split to split the string into an array. We used splice to insert commas into an array. And finally, we used join to combine the contents in the array into a single string.

We created a working solution I'm proud of, however, I have a feeling there may a better way to do it. I am lookinf forward to learn more and coming back to this!

*/

