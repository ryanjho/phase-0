// 9.2.1 JavaScript Grocery List

// Requirements:
	// Create a new list
	// Add an item with a quantity to the list
	// Remove an item from the list
	// Update quantities for items in your list
	// Print the list (Consider how to make it look nice!)

// Pseudocode:
// Method to create new list
// Input: String of items separated by spaces
// Output: An object, groceryList,
// Steps: Create a function that accepts listName as an input

// Method to add an item to a list
// Input: itemName, quantity
// Output: Updated groceryList object with new item and quantity stored
// Steps: Create function to add new item to groceryList object

// Method to remove an item from the list
// Input: itemName
// Output: Updated groceryList object with removed item and quantity
// Steps: Create function to remove existing item in groceryList object

// Method to update the quantity of an item
// Input: itemName and quantity
// Output: Updated groceryList object with updated item and quantity
// Steps: Create a function to update existing item and quantity in groceryList object

// Method to print a list and make it look pretty
// Input: 
// Output: Print grocoeryList object, with corresponding item and quantity
// Steps: Create a function that will print out groceryList object's properties and corresponding values

// Initial Solution:

// Create new list
// function newList(listName) {
// 	this.listName = listName;
// 	this.groceryItems = {};
// };

// // Add an item with a quantity to the list
// var addItem = function(itemName, quantity) {
// 	this.groceryItems[itemName] = quantity;
// }

// // Remove an item from the list
// var removeItem = function(itemName) {
// 	delete this.groceryItems[itemName];
// };

// // Update quantities for items in your list
// var updateItem = function(itemName, quantity) {
// 	this.groceryItems[itemName] = quantity;
// };

// // Print the list (Consider how to make it look nice!)
// var printList = function() {
// 	for (var prop in this.groceryItems) {
// 		console.log(prop + ": " + this.groceryItems[prop]);
// 	};
// };

// newList("Ryan Ho");
// addItem("cookies", 3);
// addItem("bread", 2);
// addItem("donuts", 5);
// removeItem("donuts");
// updateItem("cookies", 5);
// printList();


// Refactored Solution:

function groceryList(name) {
	this.name = name;
	// Create a new list
	var items = new Object();
	
	// Add an item with a quantity to the list
	this.addItem = function(itemName, quantity) {
		items[itemName] = quantity;
	}
	// Remove an item from the list
	this.removeItem = function(itemName) {
		delete items[itemName];
	}

	// Update quantities for items in your list
	this.updateItem = function (itemName, quantity) {
		items[itemName] = quantity;
	}

	// Print the list (Consider how to make it look nice!)
	this.printList = function() {
		for (var prop in items) {
			console.log(prop + ": " + items[prop]);
		}
	}
}

var ryanList = new groceryList("Ryan's List");
ryanList.addItem("Bananas", 10);
ryanList.printList;
ryanList.addItem("Chocolates", 20);
ryanList.addItem("Mango", 15);
ryanList.printList;
ryanList.removeItem("Chocolates");
ryanList.updateItem("Mango", 20);
ryanList.printList();

What concepts did you solidify in working on this challenge? (reviewing the passing of information, objects, constructors, etc.)
- For this challenge, I managed to revisit some of the fundamental concepts in JavaScript for object creation using constructors/classes.
- I went to redo the Codecademy JS track to reinforce some concepts that had gone a little rusty from several weeks back.
What was the most difficult part of this challenge?
- The most difficult part of this challenge was trying to convert quickly from a Ruby programming mind to a JS programming mind, to take into account syntax differences, etc.
Did an array or object make more sense to use and why?
- An object made more sense as it required customized keys (i.e. itemName) and quantity as the values to those keys.
