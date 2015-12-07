// Person 1:  Tests to User Stories - Ryan Ho
/*
Overall objective: To create a basic statistics calculator that has several standard
functions to caculate sum, average(mean) and median for a list of numbers.

Story 1: As a user, I want to create a function called "sum" that will calculate the sum of a list of numbers
Story 2: As a user, I want to create a function called "mean" that will calculate the average of a list of numbers
Story 3: As a user, I want to create a function called "median" that will calculate median of a list of numbers
*/


// Person 2: User Stories to Pseudocode and Refactor and translate back to User Stories - Saundra Castaneda
// Method 1:
// 1. define a method called sum that takes in an array of numbers
// 2. create a variable called total and set it equal to 0
// 3. iterate through numbers array
// 4. add each number to total
// 5. return total


// Method 2:
// 1. define a method called mean that takes in an array of numbers
// 2. create a variable called total and set it equal to the given array with the sum method applied to it
// 3. return total divided by the length of the array


// Method 3:
// 1. define a function called "median" that takes in an array of numbers
// 2. sort the array with the sort() method
// 4. create a variable called middle and set it equal to the array length-1 divided by 2
// 3. if the array has an even amount of items, return an array that contains the middle 2 numbers by using floor & ceiling
//		else, return an array that contains the element with the index equal to middle


// Person 3: Pseudocode to Code - Ryan Ho

var sum = function(numbers) {
  var total = 0;
  for (var i = 0; i < numbers.length; i++) {
    total += numbers[i];
  }
  return total;
};

var mean = function(numbers) {
  var totalSum = sum(numbers);
  return totalSum / numbers.length;
};

var median = function(numbers) {
  numbers.sort();
  var middle = Math.floor((numbers.length - 1)/2);
  if (numbers.length % 2 === 0) {
    return (numbers[middle] + numbers[middle+1]) / 2 ;
  } else {
    return numbers[middle];
  }
};

// Comments:
The code passed all the tests successfully. 
