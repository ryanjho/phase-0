# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge by myself

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: An array of numbers
# Output: An integer that is the sum of all the numbers stored in the input array
# Steps to solve the problem.
=begin
1) Create a counter to keep a running tab of the cumulative sum of numbers after each iteration
2) Iterate through each number stored in the array, adding that number to the counter
3) Repeat until all the numbers stored in the array after each iteration
4) Return the sum
=end

# 1. total initial solution
=begin
def total(array_numbers)
	sum = 0
	array_numbers.each do |number|
		sum = sum + number
	end
	return sum
end
#Test solution
puts total([4.5,0,-1])
=end

# 3. total refactored solution
def total(array_numbers)
	sum = 0
	array_numbers.each {|number| sum= sum + number}
	return sum
end

# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: An array of strings
# Output: A string that is a final sentence formed by combining each string stored in the array
# Steps to solve the problem.
=begin
1) Create a space variable to incorporate spaces between the strings to be concatenated
2) Create a final_sentence variable that accumulates each string in the array as the program iterates through the array
3) Iterate through the array using the .each method and add each new string (after each iteration) to the final_sentence variable
4) Remove the space character at the end of the string
5) Add punctuation of "." at the end of the final_sentence string variable
=end

# 5. sentence_maker initial solution
=begin
def sentence_maker(array_string)
	space = " "
	final_sentence = ""
	array_string.each do |string|
		final_sentence = final_sentence + string + " "
	end
	return final_sentence.capitalize.chomp(" ") + "."
end

#Test solution
puts sentence_maker(["hello", "world", "how", "are", "you"])
=end

# 6. sentence_maker refactored solution
def sentence_maker(array_string)
	return array_string.join(" ").capitalize + "."
end
