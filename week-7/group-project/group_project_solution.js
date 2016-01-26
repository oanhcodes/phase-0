/* User Stories

1. As a user, I want the get the sum for a list of numbers.
2. As a user, I want to get the average for a list of numbers.
3. As a user, I want to find middle number in a list of numbers.

*/

/* Summary

The code passed all the tests. Together we created successful functions to find 
the sum, mean, and median of an array! We did what the user requested. Way to go!

*/

//Refacoring : Person 5
//As a user, I want to create a function that accept a list of numbers and add it up.
function sum(array) {
var total = 0;
for (var i = 0; i < array.length; i++){
  total += array[i];
}
return total;
};

//As a user, I want to create a function that will give us the average of a list of numbers.
function mean(array) {
var total = 0;
  total += array[i];
}
return total/(array.length);
}

//As a user, I want to create a function that will give us the median of numbers from a list
function median(array) {
function sortNumber(a,b) {
  return a - b;
}
var len = array.length;
if (array.length % 2 === 0) {
  return (array_sort[(len - 2)/2] + array_sort[(len)/2]) / 2;
}
else {
  return array_sort[(len - 1)/2];
}
}