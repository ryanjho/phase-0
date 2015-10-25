# Good Guess

# I worked on this challenge by myself.


# Your Solution Below
puts "Kindly input an integer"
user_input = gets.chomp.to_i
def good_guess?(number)
	if number == 42
		return true
	else
		return false
	end
end
puts good_guess?(user_input)
