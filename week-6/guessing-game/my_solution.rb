# Build a simple guessing game


# I worked on this challenge by myself.
# I spent 1 hours on this challenge.

# Pseudocode

# Input: An integer
# Output: Return :high if the guess is larger than the answer, 
# Steps:


# Initial Solution
=begin
class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	@guess_correct = false
  	if @guess > @answer
  		return :high
  	elsif @guess < @answer
  		return :low
  	else
  		@guess_correct = true
  		return :correct
  	end

  end

  def solved?
  	if @guess_correct == true
  		return true
  	else
  		return false
  	end
  end

end
=end


# Refactored Solution
class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def guess(guess)
  	@guess = guess
  	return :correct if solved?
  	@guess > @answer ? :high : :low
  end

  def solved?
  	@guess == @answer
  end

end


game = GuessingGame.new(10)
p game.solved?
p game.guess(5)
p game.guess(20)
p game.solved?
p game.guess(10)
p game.solved?

# Reflection
=begin 
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
- Instance variables store information (or characteristics) of the instance (or object) of a class. Methods represent the behaviors of the object.
- An example will be a real world object of a car. A car has certain characteristics such as its color, brand and size, which are stored in instance variables. Its methods represent the behaviors of the car, like start the engine, accelerate, break, etc.

When should you use instance variables? What do they do for you?
- Instance variables should be used inside the class definition if you want it to be accessible by other methods defined in the same class.

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
- I did not face any major trouble using flow control (if-else) in this challenge. It only took a little bit more time during the refactoring to use the ternary operators to shorten the code block.

Why do you think this code requires you to return symbols? What are the benefits of using symbols?
- Symbols are more efficient than using strings as Symbols are immutable but strings are mutable, so memory usage is lower.
=end