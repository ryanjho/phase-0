# Pad an Array

# I worked on this challenge by yself

# I spent 1.5 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? An array, a non-negative integer for the minimum size of the array, and an optional argument of what the array should be "padded"
# What is the output? (i.e. What should the code return?) Code should return the array with padded elements (if any, depending if the minimum size argument is less than the number of objects in the array argument)
# What are the steps needed to solve the problem?
=begin
1. Define method with default value of nil given to padding argument
2. Count the number of objects in the array argument using .count method
2. Create if else statement to account for 2 different cases:
Case 1: minimum size of array > Number of objects in array argument 
Case 2: Every other case
3. For case 1:
	- Get the difference between the minimum size of array and number of objects in array argument
	- Then use this number to loop the number of times to push either nil or optional padding argument into the array
   For case 2: 
   	- Return the array

*For non-destructive method, a new array is created and returned
*For destructive method, the existing array passed into the method is altered
=end


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  array_size = array.count
  if min_size > array_size
  	for i in 0...(min_size - array_size)
  		array.push(value)
  	end
  	return array
  else
  	return array
  end
end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  temp_array = array + []
  array_size = temp_array.count
  if min_size > array_size
  	for i in 0...(min_size - array_size)
  		temp_array.push(value)
  	end
  	return temp_array
  else
  	return temp_array
  end
end
#Test solution
p pad!([1,2,3,4],0)
p pad!([1,2,3,4],10,'apple')


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
	while array.length < min_size
		array << value
	end
	return array
end

def pad(array, min_size, value = nil) #non-destructive
	temp_array = array + []
	while temp_array.length < min_size
		temp_array << value
	end
	return temp_array
end

# 4. Reflection
=begin
Were you successful in breaking the problem down into small steps?
- Yes, I was pretty successful in breaking the problem down into smaller steps. It helped to take a few minutes to conceptualize the problem and think of the necessary steps required to solve the problem.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
- Once I had written my pseudocode, it was quite straightforward to translate it into code to form the initial solution.

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
- My initial solution was successful at passing the test. I made sure to account for all cases (trying to be collectively exhaustive) to ensure that the code will pass all possible use cases.

When you refactored, did you find any existing methods in Ruby to clean up your code?
- I found some new methods, such as << (equivalent to .length) and also changed to a while loop (that incorporates an if else case) to refactor my code.

How readable is your solution? Did you and your pair choose descriptive variable names?
- I tried to name my variables as descriptive as possible to enhance the readability of my solution.

What is the difference between destructive and non-destructive methods in your own words?
- Destructive methods change the initial variable that was passed into the method, while non-destructive methods create another variable and does not change the initial variable.
=end