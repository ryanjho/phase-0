// JavaScript Olympics

// I paired by myself on this challenge.

// This challenge took me 2 hours.


// Warm Up

// Bulk Up
var win = function(array_athletes) {
	for (var i =0; i< array_athletes.length; i++) {
		console.log(array_athletes[i].name + " won the " + array_athletes[i].event + " event.");
	}
};

array_athletes = [{name: "Sarah Hughes", event: "Ladies Single"}];
win(array_athletes);


// Jumble your words
var reverse_string = function(string) {
	console.log(string.split("").reverse().join(""));
}
reverse_string("Hello world, how are you doing today?");

// 2,4,6,8
var even_numbers = function(array_numbers) {
	var array_even = [];
	for (var i = 0; i<array_numbers.length; i++) {
		if (array_numbers[i] % 2 ==0) { array_even.push(array_numbers[i]);}
	}
	console.log(array_even);
}

even_numbers([2,3,4,5,6,7,8]);


// "We built this city"
var Athlete = function(name, age, sport, quote) {
	this.name = name,
	this.age = age,
	this.sport = sport,
	this.quote = quote
};

var michaelPhelps = new Athlete("Michael Phelps", 29, "swimming", "It's medicinal I swear!")
console.log(michaelPhelps.constructor === Athlete)
console.log(michaelPhelps.name + " " + michaelPhelps.sport + " " + michaelPhelps.quote)


// Reflection
/*
What JavaScript knowledge did you solidify in this challenge?
- I learned more about using the object properties in JavaScript, and how to create objects using the constructor function and literal notation
What are constructor functions?
- Constructor functions are used to create objects in JavaScript, and the constructor object has its properties and methods defined with the keyword "this" in front of it.
- For an object created using a Constructor function, a change made to an instance of it will not affect any other instances of that object.
How are constructors different from Ruby classes (in your research)?
- Ruby classes use the initialize method defined on the class, while in JavaScript, there is no such method.
- Ruby uses objects inherited from Class to create new objects, whereas JS can either define literal objects, or invoke constructor functions (which are in turn objects themselves) to create new objects.