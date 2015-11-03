#GPS 2.2 - Ruby

#Release 1: Pseudocode
=begin
# Input:
# Output: 

# Create a new list
  - Initiate new hash list
# Add an item with a quantity to the list
  - Create method with 3 parameters: list_name, item_name and quantity to be added to the hash
# Remove an item from the list
  - Use the .delete method to remove an item from the hash using the key name
# Update quantities for items in your list
  - Use the access method hash_name[key] to update the value linked to this key
# Print the list
  - Use the .each method to iterate through the hash and print out each key/value pair
=end

#Release 2: Initial Solution

# Create a new list
def new_list(list_name)
	$list_name = Hash.new(0)
end

# Add an item with a quantity to the list
def add_item(list_name, item_name, quantity)
	$list_name[item_name] = quantity
end

# Remove an item from the list
def remove_item(list_name, item_name)
	$list_name.delete(item_name)
end

# Update quantities for items in your list
def update_item(list_name, item_name, quantity)
	$list_name[item_name] = quantity
end

# Print the list
def print_list(list_name)
	$list_name.each {|key,value| puts "#{key}: #{value}" }
end

user_complete = false
until user_complete
puts "What would you like to do: Choose option A,B,C,D or E"
puts "A: Create new list"
puts "B: Add an item"
puts "C: Remove an item"
puts "D: Update quantity"
puts "E: Print the list"
user_input = gets.chomp
case user_input
when "A"
	print "Input list name: "
	$list_name=gets.chomp
	new_list($list_name)
when "B"
	print "Input item name: "
	item_name = gets.chomp
	print "Input quantity number: "
	quantity = gets.chomp
	add_item($list_name, item_name, quantity)
when "C"
	print "Input item name you wish to remove: "
	remove_item_name = gets.chomp
	remove_item($list_name, remove_item_name)
when "D"
	print "Input item name to update: "
	item_name = gets.chomp
	print "Input new quantity: "
	new_quantity = gets.chomp
	update_item($list_name,item_name, new_quantity)
when "E"
	puts "List name: #{$list_name}"
	print_list($list_name)
	user_complete = true
end
end

#Release 4: Refactored Solution

# Create a new list
# Add an item with a quantity to the list
# Remove an item from the list
# Update quantities for items in your list
# Print the list

#Release 5: Reflect
=begin
What did you learn about pseudocode from working on this challenge?
- It was important to think about the problem and detail the steps to solve it first, before jumping straight into the code.
- It helped to clarify my thoughts and allowed the coding process to run more smoothly

What are the tradeoffs of using Arrays and Hashes for this challenge?
- Using the Hash data structure was preferred because the keys were strings (i.e. grocery items) and required a more descriptive label

What does a method return?
- In ruby, the last expression in a method is automatically returned by the method.

What kind of things can you pass into methods as arguments?
- You can pass any object as arguments into a method. 

How can you pass information between methods?
- I created the global variable, $list_name, so that it can be accessed by all the different methods

What concepts were solidified in this challenge, and what concepts are still confusing?
- It was good practice to use a global variable that can be accessed by different methods. This helped to solidify the concept of method and variable scoping.
=end