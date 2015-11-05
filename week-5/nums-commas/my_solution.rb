# Numbers to Commas Solo Challenge

# I spent 3 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? 
# A positive integer

# What is the output? (i.e. What should the code return?)
# A comma-separated integer as a string

# What are the steps needed to solve the problem?
=begin
1. Convert integer into string
2. Insert if/else statement:
   - If length of string is <= 3, return string
   - Else, proceed to following steps
3. Input each character of the string into an array
4. Reverse the array
5. Find out the number of iterations through the array is needed to add commas
6. Create a final array as an accumulator after each iteration
7. Iterate through the array, using a temp array to store the sliced array with 3 characters, then push a "," at the end of this array
8. Add this temp array to the final array variable
9. Create a remainder variable to store the number of characters left to add to final array
10. Add the remainder to final array
11. Reverse the final array and return it
12. Use the join method to collapse all the objects stored in the final array into one single object
=end

# 1. Initial Solution
=begin
def separate_comma(user_integer)
	integer_string = user_integer.to_s
	string_length = integer_string.length
	if string_length <= 3
		return integer_string
	else
		string_array = integer_string.split("")
		string_array.reverse!
		number_iterations = (string_length -1)/3
		start_index = 0
		final_array= []
		number_iterations.times do 
			temp_array = string_array.slice(start_index..start_index+2).push(",")
			final_array	= final_array + temp_array
			start_index += 3
		end
		remainder = string_length - (3*number_iterations)
		final_array = final_array +string_array.slice(-remainder..-1)
		return final_array.reverse!.join
	end
end

#Test solution
puts separate_comma(1000)
puts separate_comma(1000000)
puts separate_comma(0)
puts separate_comma(100)
puts separate_comma(100001)

=end

# 2. Refactored Solution
def separate_comma(user_integer)
	if user_integer.to_s.length <= 3
		return user_integer.to_s
	else
		final_array=[]
		counter_comma = (user_integer.to_s.length - 1) / 3
		user_integer.to_s.split("").reverse.each_slice(3) do |array|
			array = array.push(",") if counter_comma > 0
			p array
			final_array = final_array + array
			counter_comma -=1
		end
		return final_array.reverse.join
	end
end

# 3. Reflection
=begin 
What was your process for breaking the problem down? What different approaches did you consider?
- My approach was to turn the input integer into a string, pass each character into an array, and then reverse it.
- As the commas will be inserted after every 3 characters from the reversed array, I can then use a loop and the slice method to break them up in groups of 3 characters, and then push the "," string to each group
- I then created a remainder variable to store any remaining characters that did not belong to groups of three characters, and then added this into the final array
- To return the final output, I then used the join method and reverse method 
- I considered working from right to left, but felt that it will be more straightforward to reverse the array first, and then iterate from right to left

Was your pseudocode effective in helping you build a successful initial solution?
- The psueodocode was helpful to visualize the problem and think of different approaches
- However, it took some iterations with the code and experimenting with the actual method to help solidify my method

What Ruby method(s) did you use when refactoring your solution? What difficulties did you have implementing it/them? Did it/they significantly change the way your code works? If so, how?
- I used the .each_splice method for my refactored solution
- It helped to make my code more streamlined. I had to do a bit of Googling to learn more about the method and how to use it, and also practice a little in irb

How did you initially iterate through the data structure?
- I used a loop to iterate through the string array, inserting a comma after every 3 characters from the reversed array

Do you feel your refactored solution is more readable than your initial solution? Why?
- Yes, I felt that it was more readable and less clunky than the initial solution. I did not have to create an additional remainder variable to add it back into the final array output
=end
