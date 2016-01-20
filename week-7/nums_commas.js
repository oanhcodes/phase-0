

// Separate Numbers with Commas in JavaScript **Pairing Challenge**

// I worked on this challenge with: John Seo

/* Pseudocode
-Create a function called addComma that accepts one Number argument
-Find the length of the Number
-Find number of commas need by dividing length by 3
-IF length is <= 3, return length
-ELSIF length of number % 3 == 1, add commas starting at index 1
-ELSIF length of number % 3 == 2, add commas starting at index 2
-ELSE length of number % 3 == 0, add commas starting at three
	-Subtract one comma from num of commas to remove unnecessary comma at end
-Iterate with a loop to add commas
*/

// Initial Solution
// function addComma(number) {
//     var length = number.toString().length
//     var num_of_commas = Math.floor(length/3)
//     var num_array = number.toString().split("")
//      if (length <= 3)
//        return number;
//      else if (length % 3 == 1)
//        for(var i = 1; i < length; i += 4)
//        num_array.splice(i, 0, ",");
//        i += 4
//        return num_array.join("");
//      else if (length % 3 == 2)
//        for(var i = 2; i < length; i += 4)
//        num_array.splice(i, 0, ",");
//        i += 4
//        return num_array.join("");
//      else (length % 3 == 0)
//        for(var i = 3; i < (length-1); i += 4)
//        num_array.splice(i, 0, ",");
//        i += 4
//        return num_array.join("");
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
console.log(addComma(100))
console.log(addComma(1000))
console.log(addComma(10010))
console.log(addComma(100101))
console.log(addComma(1001012))
console.log(addComma(1001012232))
console.log(addComma(100101223432435325252))



// Reflection