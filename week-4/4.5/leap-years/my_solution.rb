# Leap Years

# I worked on this challenge by myself


# Your Solution Below
puts "Kindly input year"
year = gets.chomp.to_i
def leap_year?(year)
	if year % 4 == 0
		if year % 100 == 0
			if year % 400 == 0
				return true
			else
				return false
			end
		else
			return true
		end
	else
		return false
	end
end

	
