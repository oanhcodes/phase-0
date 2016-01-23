// Add the finished solution here when you receive it.

//Refacoring : Person 5
//Create a Function that accept a list of numbers and add it up.
function sum(array) {
 //Create an empty container that will be our total number.
var total = 0;
//For each number we have on the list add it to the total container.
for (var i = 0; i < array.length; i++){
  total += array[i];
}
//Give us the total after adding all the number from the list.
return total;
};

//Create a Function that will give us the average of a list of numbers.
function mean(array) {
 //Create an empty container that is going to contain our total number of things added from our list.
var total = 0;
//Create a function that will add all our numbers from the list to the empty container.
for (var i = 0; i < array.length; i++){
  total += array[i];
}
//Take the total and devide it by how many is in the list.
return total/(array.length);
}

//Create a function that will give us the median of numbers from a list
function median(array) {
 //Sort our list from lowest to highest.
function sortNumber(a,b) {
  return a - b;
}
//Count how many things is on our list
var len = array.length;
// Create 2 scenairo, if the number is an even numbers of items on the list or odd numbers on the list
var array_sort = array.sort(sortNumber);
if (array.length % 2 === 0) {
 // If it is an even number on the list, we get our frist number by dividing the list in half and getting the two number that is in the middle and dividing it in half and that will give us the answer.
  return (array_sort[(len - 2)/2] + array_sort[(len)/2]) / 2;
}
// If list is an odd number, then divide the list in half and subtract 1 from that because JavaScript start its count at 0.
//
else {
  return array_sort[(len - 1)/2];
}
}
// __________________________________________
// Tests:  Do not alter code below this line.


oddLengthArray  = [1, 2, 3, 4, 5, 5, 7]
evenLengthArray = [4, 4, 5, 5, 6, 6, 6, 7]


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

// tests for sum
assert(
  (sum instanceof Function),
  "sum should be a Function.",
  "1. "
)

assert(
  sum(oddLengthArray) === 27,
  "sum should return the sum of all elements in an array with an odd length.",
  "2. "
)

assert(
  sum(evenLengthArray) === 43,
  "sum should return the sum of all elements in an array with an even length.",
  "3. "
)

// tests for mean
assert(
  (mean instanceof Function),
  "mean should be a Function.",
  "4. "
)

assert(
  mean(oddLengthArray) === 3.857142857142857,
  "mean should return the average of all elements in an array with an odd length.",
  "5. "
)

assert(
  mean(evenLengthArray) === 5.375,
  "mean should return the average of all elements in an array with an even length.",
  "6. "
)

// tests for median
assert(
  (median instanceof Function),
  "median should be a Function.",
  "7. "
)

assert(
  median(oddLengthArray) === 4,
  "median should return the median value of all elements in an array with an odd length.",
  "8. "
)

assert(
  median(evenLengthArray) === 5.5,
  "median should return the median value of all elements in an array with an even length.",
  "9. "
)