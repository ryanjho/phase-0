// Eloquent JavaScript

// Run this file in your terminal using `node my_solution.js`. Make sure it works before moving on!

// Program Structure
// Write your own variable and do something to it.
var greeting = "hello there";
var name = "Ryan";
console.log(greeting + " " + name);

// Write a short program that asks for a user to input their favorite food. After they hit return, have the program respond with "Hey! That's my favorite too!" (You will probably need to run this in the Chrome console (Links to an external site.) rather than node since node does not support prompt or alert). Paste your program into the eloquent.js file.
var favorite_food = prompt("What is your favorite food?");
alert("Hey! That's my favorite too!");

// Complete one of the exercises: Looping a Triangle, FizzBuzz, or Chess Board

// Looping a Triangle:
counter = ""
for (var i = 0; i < 7; i +=1) {
  counter = counter + "#";
  console.log(counter);
}

// FizzBuzz:
for (var i = 1; i <= 100; i+=1) {
  if (i % 3 ==0 && i % 5==0)
    console.log("FizzBuzz");
  else if (i%3 == 0)
    console.log("Fizz");
  else if (i%5 == 0)
    console.log("Buzz");
  else
    console.log(i);
}

// Functions

// Complete the `minimum` exercise.
function min(x,y) {
  if (x<y) 
    return x;
  else
    return y;
}

//Refactored
function min(x,y) {
	return Math.min(x , y);
}

console.log(min(0,10));
console.log(min(0,-10));

// Data Structures: Objects and Arrays
// Create an object called "me" that stores your name, age, 3 favorite foods, and a quirk below.

var me = {
	name: "Ryan",
	age: 25,
	favorite_food_1: "Steak",
	favorite_food_1: "Thai noodles",
	favorite_food_1: "Singapore chicken rice",
	quirk: "I like to read Soccer news when I am in the restroom."
};