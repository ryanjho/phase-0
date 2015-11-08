# Class Warfare, Validate a Credit Card Number


# I worked on this challenge with Amaar Fazlani
# I spent 2 hours on this challenge.

# Pseudocode

# Input: 16-digit integer from user
# Output: True or False for check_card method
# Steps:
# Step 1: Turn input integer into string 
# Step 2: Pass string items into an array
# Step 3: Split initial array into 2 arrays - one for odd_indexed items and another for even_indexed items
# Step 4: Iterate through the even_indexed array and double every value
# Step 5: Check each object in even_indexed array - if its >=10, split object into two different objects/elements
# Step 6: Join odd_indexed array and even_indexed array. Then sum all objects
# Step 7: If total is a multiple of 10, you have a valid creditcard number so return true. If not, then return false.
#Step 8: In class, include argumenterror if input number < 16

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits
=begin
class CreditCard
  def initialize(number)
 #   @number = number
    if number.to_s.length != 16
      raise ArgumentError.new("That is not a valid credit card number")
    else
      @number = number.to_s.split("")
    end
  end


  def check_card
    odd_array = []
    even_array = []
    @number.each_index { |x| 
      if x % 2 == 0
        even_array[x] = @number[x].to_i * 2
      else
        odd_array[x] = @number[x].to_i
      end
    }
    p even_array.compact!
    p odd_array.compact!
    
    new_even_array = []
    even_array.each { |x|
      if x >= 10
        split_array = x.to_s.split("")
        new_even_array = new_even_array + split_array
      else
        new_even_array << x
      end
    }
    sum_even = 0
    new_even_array.each { |x|
      sum_even = sum_even + x.to_i
    }
    sum_odd = 0
    odd_array.each { |x|
      sum_odd = sum_odd + x.to_i
      }
    p sum_even
    p sum_odd
    
    if (sum_even + sum_odd) % 10 == 0
      p true
    else
      p false
    end
  end
end

# Test Solution
card_1 = CreditCard.new(2222222222223456)
card_1.check_card

card_2 = CreditCard.new(4563960122001999)
card_2.check_card
=end


# Refactored Solution
class CreditCard
	def initialize(number)
		@card_array = number.to_s.split("")
		raise ArgumentError.new("This is not a valid credit card number. Kindly make sure credit card number input is 16 digits long") if number.to_s.length != 16
	end

	def array_manipulation
		@even_indexes = []
		@odd_indexes = []
		@card_array.each_with_index { |item, index|
			if index.even?
				@even_indexes.push(item.to_i*2)
			else
				@odd_indexes.push(item.to_i)
			end
		}
		@new_even_indexes = []
		@even_indexes.each { |item|
			if item >= 10
				split_array = item.to_s.split("")
				@new_even_indexes = @new_even_indexes + split_array
			else
				@new_even_indexes.push(item)
			end
		}
	end

	def sum_arrays
		combined_array = @new_even_indexes.map(&:to_i) + @odd_indexes
		if combined_array.reduce(:+) % 10 == 0
			return true
		else
			return false
		end
	end

	def check_card
		array_manipulation
		sum_arrays
	end

end

#Test Refactored Solution
card_2 = CreditCard.new(4563960122001999)
card_2.check_card

# Reflection
=begin
What was the most difficult part of this challenge for you and your pair?
- The most difficult part of this challenge for us was turning our pseudocode into actual working code.
- We faced some debugging issues along the way, but fortunately were able to solve them successfully

What new methods did you find to help you when you refactored?
- I found the .indexes.map(&:to_i) very useful to iterate through each object stored in the array and change it to an integer, without using a .each loop
- I also found the .reduce(:+) enumerable method very useful to sum the integers stored in the array without using a .each loop

What concepts or learnings were you able to solidify in this challenge?
- I was able to reinforce my concepts of manipulating arrays and accessing elements in the array based on odd/even index etc

=end