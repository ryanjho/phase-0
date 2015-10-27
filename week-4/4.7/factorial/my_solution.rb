# Factorial

# I worked on this challenge by myself


# Your Solution Below
def factorial(number)
  # Your code goes here
  if number == 0
  	return 1
  else
  	i = number
  	result = 1
  	while i > 0
  		result = result * i
  		i -= 1
  	end
  	return result
  end  
end

#Test solution
factorial(5)