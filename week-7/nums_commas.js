// Separate Numbers with Commas in JavaScript **Pairing Challenge**


// I worked on this challenge with: Alicia Quezada.

// Pseudocode
/*
Input: Integer
Output: Return a comma separated integer as a string

Steps:
1. Define a function expression, giving the function an input (integer)
2. Convert integer into a string
3. Convert string into an array
4. Reverse the array elements
5. Slice the array into elements of 3
6. Insert comma at the end of each group of 3 elements
7. Join each of these group of 3 elements together
8. Return reverse of joined array
*/

// Initial Solution
var separateComma = function(integer) {
  
  var array = integer.toString().split("").reverse(); 
  for (var i = 3 ; i < array.length; i+=4) {
    array.splice(i,0,',');
  };
  var finalInteger = array.reverse().join('');
  console.log(finalInteger)
}

separateComma(123456);

// Refactored Solution
var separateComma = function(integer) {
  var array = integer.toString().split("").reverse(); 
  for (var i = 3 ; i < array.length; i+=4) {
    array.splice(i,0,',');
  };
  console.log(array.reverse().join(''));
}



// Your Own Tests (OPTIONAL)



// Reflection
/*
What was it like to approach the problem from the perspective of JavaScript? Did you approach the problem differently?
- It was definitely a different experience approaching the problem using JavaScript (as compared to Ruby)
- As we were not that familiar (yet) with some of the available methods in JavaScript, we took a bit of time to think of how to approach the problem
with our limited knowledge of JavScript. 
- In the end, we were able to solve the problem successfully.

What did you learn about iterating over arrays in JavaScript?
- In JavaScript, there are no specific loop methods like .each to iterate over arrays (as compared to in Ruby)
- As such, I have to use a for loop to iterate over the length of the array

What was different about solving this problem in JavaScript?
- The method used was different in JavaScript. We used .splice method to help splice the array and add 

What built-in methods did you find to incorporate in your refactored solution?
- We couldn't come up with too much refactoring in our refined solution since we had used the .splice method from the start, which already made the code concised and readable.
*/