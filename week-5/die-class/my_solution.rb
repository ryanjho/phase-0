# Die Class 1: Numeric

# I worked on this challenge by myself

# I spent 1 hours on this challenge.

# 0. Pseudocode

# Input: Input number of sides in the die, can roll the die 
# Output: Return a random number from the rolled die
# Steps:
=begin 
1. Create new object class called Die
2. Provide user input for number of sides in the die
3. Create warning if user input for number of sides in the die is less than 1
4. Return random number result when user passes Die.new
=end

# 1. Initial Solution
=begin 
class Die
  def initialize(sides)
    # code goes here
    raise ArgumentError.new("Only whole numbers 1 or more are allowed") if sides < 1
    @die_sides = sides
  end

  def sides
    # code goes here
   return @die_sides
  end

  def roll
    # code goes here
    @@die_roll = Random.new
    return @die_roll.rand(1..@die_sides)
  end
end
=end

# 3. Refactored Solution

class Die
  def initialize(sides)
    # code goes here
    raise ArgumentError.new("Only whole numbers 1 or more are allowed") if sides < 1
    @die_sides = sides
  end

  def sides
    # code goes here
   return @die_sides
  end

  def roll
    # code goes here
    return Random.rand(1..@die_sides)
  end
end

# 4. Reflection
=begin 
What is an ArgumentError and why would you use one?
- An ArgumentError is raised when the arguments are wrong and there isn't a more specific Exception class
- It is used to raise an error to the user to highlight what is wrong with the arguments passed into the method.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
- It was a good learning experience to use the Random class and .rand method in this challenge. It took a bit of researching to learn more about this class and how to use the method appropriately.

What is a Ruby class?
- A class is the blueprint from which individual objects are created.

Why would you use a Ruby class?
- Using a Ruby class is very useful in Ruby as everything is an object in Ruby, and creating a class helps to create objects that are an instance of that class.

What is the difference between a local variable and an instance variable?
- A local variable's scope is only usable within the method in which it was defined
- An instance variable's scope is visible within the instance of the class which it has been defined.
- For an instance variable, it is important to remember when and in which method the instance variable is defined.

Where can an instance variable be used?
- Instance variables are used in the definition of a class. They are bound to an instance of a class and can be referenced in other methods defined within that same class.
=end