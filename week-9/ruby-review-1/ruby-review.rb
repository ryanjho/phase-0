# I worked on this challenge by myself.
# This challenge took me 1 hours.

# Pseudocode
# Input: Integer
# Output: Boolean result with string description indicating whether number is part of Fibonacci sequence
# Steps:
# 1. Define a method that takes in a parameter, num.
# 2. Create a counter and assign it a value of 0.
# 3. Initialize an array and store it with the numbers 0 and 1.
# 4. Use a loop to sum the last 2 numbers in the array and store this sum into the array.
# 5. Perform a check to see if parameter num is found in the array. If found, return true, else return false


# Initial Solution
# def is_fibonacci?(num)
# 	counter = 0
# 	array = [0,1]
# 	checker = false
# 	while array[-1] < num do
# 		array << (array[-1] + array[-2])
# 		counter += 1
# 	end
# 	array.each do |array_element|
# 		checker = true if num == array_element 
# 	end
# 	return checker
# end

# is_fibonacci?(2)

# Refactored Solution
def is_fibonacci?(num)
	array = [0,1]
	while array[-1] < num do
		array << (array[-1] + array[-2])
	end
	return array[-1] == num
end

is_fibonacci?(8)


# Reflection
# What concepts did you review in this challenge?
# - I reviewed concepts of while loops and how to push elements into arrays
# What is still confusing to you about Ruby?
# - So far, most of the foundational concepts are understandable. 
# - I plan to continue doing algorithmic practice to familiarize myself with more advanced Ruby methods to solve more complicated challenges
# What are you going to study to get more prepared for Phase 1?
# - I plan to revisit HTML5 and CSS concepts, and also continue to work on practising more Ruby concepts