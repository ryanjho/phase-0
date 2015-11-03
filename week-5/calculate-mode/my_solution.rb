# Calculate the mode Pairing Challenge

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input?: An array of numbers or strings
# What is the output? (i.e. What should the code return?): An array that has the most frequent values
# What are the steps needed to solve the problem?
=begin
1. Iterate through the array and add each unique array object into a Hash with its corresponding frequency value
2. Select the Hash key/value pairs with the highest frequency value
3. Pass the keys of the sorted Hash into an Array
3. Return the Array
=end

# 1. Initial Solution
=begin
def mode(array)
	frequencies = Hash.new(0)
	array.each do |array_object| 
		frequencies[array_object] += 1
	end
	frequencies = frequencies.select do |key,value| 
		value >= frequencies.values.max 
	end
	mode_array = []
	frequencies.each do |key,value| 
		mode_array.push(key)
	end
	return mode_array
end

#Test solution
p mode([1,2,3])

=end

# 3. Refactored Solution
def mode(array)
	frequencies = Hash.new(0)
	array.each { |array_object| frequencies[array_object]+=1 }
	frequencies = frequencies.select { |key,value| value>= frequencies.values.max }
	mode_array = []
	frequencies.each_key {|key| mode_array << key}
	return mode_array
end

# 4. Reflection
=begin
Which data structure did you and your pair decide to implement and why?
- I decided to use Hashes as it could handle strings as keys as well
Were you more successful breaking this problem down into implementable pseudocode than the last with a pair? 
- I worked on this alone due to work travel commitments (and I could not find an available pairing time)
What issues/successes did you run into when translating your pseudocode to code?
- I was trying to figure out how to account for the case where the method will return multiple keys tha have the same highest frequency
What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?	
- I used the .each method to iterate through each key/value pair in the hash. I also used the .select method and .values and .max methods to select only the key/value pairs that has the highest values.
=end