# Die Class 2: Arbitrary Symbols


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: List of arbitrary labels
# Output: Return integer number of labels
# Steps: 
# 1. Create a new class called Die
# 2. Define the initialize constructor method, taking in an argument called labels. Then, assign labels to an instance variable called @labels
# 3. Define the sides method, which returns the size of the labels instance variable
# 4. Define a roll method, which returns one of the elements in the @labels list randomly

# Initial Solution
=begin
class Die
  def initialize(labels)
  	@labels = labels
  	raise ArgumentError.new("List of labels is empty! Make sure the list is populated!") if labels.empty?
  end

  def sides
  	return @labels.size
  end

  def roll
  	@die_roll = Random.new
  	return @labels[@die_roll.rand(0..(@labels.size-1))]
  end

end
=end

# Refactored Solution

class Die
	def initialize(labels)
		@labels = labels
		raise ArgumentError.new("List of labels is empty! Make sure the list is populated!") if labels.empty?
	end

	def sides
		return @labels.size
	end

	def roll
		return @labels.shuffle.first
	end
end

die = Die.new([1,2,3,4,5])
p die.sides
p die.roll

# Reflection
=begin 
What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
- The main difference was the input and manipulation of this input. This time, the argument passed into the class is an array, and the manipulation uses array methods to return a random object within that array

What does this exercise teach you about making code that is easily changeable or modifiable? 
- This exercises taught me how to break down the code into different methods, which allows the entire class to be more changeable and modifiable.

What new methods did you learn when working on this challenge, if any?
- I learned how to use the .shuffle method to randomly shuffle around the elements within the array, and then utilized the .first method to return the first indexed object stored in the array

What concepts about classes were you able to solidify in this challenge?
- I am more familiar with the structure of classes, how to define them and also how to define methods within the class that use instance variables
=end