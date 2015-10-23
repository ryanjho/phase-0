# 4.2 Numbers, Letters and Variable Assignment

## Release 1: Summarize
- What does puts do?
  - Puts returns nil and prints the output to your console with a new line
- What is an integer? What is a float?
  - An integer is a number without decimal points (e,g, 8). A float is a number with decimal points (e.g. 8.23)
- What is the difference between float and integer division? How would you explain the difference to someone who doesn't know anything about programming?
  - Integer division will return integer answers, rounded down to the nearest integer. An example will be 5/2 which will return 2.
  - A float division will return float answers, with decimal points to provide the closest possible accuracy. Using the same example of five divided by two but this time using floats of 5.0/2.0, float division will return 4.5

## Release 2: Try it!
- Hours in a year:
  ```ruby
  print "hours in a decade: "
  puts 24*365*10
	```
- Minutes in a decade
  ```ruby
  print "minutes in a decade: "
	puts 60*24*365*10
	```
## Release 5: Exercises
### Defining Variables
[4.2.1 Defining Variables](https://github.com/ryanjho/phase-0/blob/master/week-4/4.2/defining-variables.rb)
```
first_name = "Ryan"
last_name = "Ho"
age = 25
```

### Simple String Methods
[4.2.2 Simple String Methods](https://github.com/ryanjho/phase-0/blob/master/week-4/4-2/simple-string.rb)
```
old_string = "Ruby is cool"
new_string = old_string.upcase.reverse
```

### Local Variables and Basic Expressions
[4.2.3 Basic Math](https://github.com/ryanjho/phase-0/blob/master/week-4/4.2/basic-math.rb)

## Release 7: Reflect
__How does Ruby handle addition, subtraction, multiplication, and division of numbers?__

__Ruby handles basic arithmetic (i.e. addition, subtraction, multiplication and division) like that of a calculator, utilitizing the following notations:__
  - Addition: +
  - Subtraction: - 
  - Multiplication: *
  - Division: /

__What is the difference between integers and floats?__
- Integers are whole numbers without decimal points, while floats are numbers with decimal points.

__What is the difference between integer and float division?__
- Integer division will return integers (numbers without decimal points) while float division will return numbers with decimal points.

__What are strings? Why and when would you use them?__
- Strings are groups of letters. You use strings if you want to print out a message on the console. You can even manipulate strings with arithmetic commands (i.e. string arithmetic), such as adding two separate strings together to form a longer string, or multiplying a string.

__What are local variables? Why and when would you use them?__
- Local variables are used to assign something (any sequence of letters and numbers) to a variable name and store in your computer's memory for use later in your program. Local variables only apply to that specific program, and will not exist outside of that program.
- You would use local variables if you wanted to assign somethign to a variable name, and only use it within that particular program. These local variables will not affect other programs outside of the program in which the local variable was created in.

__How was this challenge? Did you get a good review of some of the basics?__
- The challenge was pretty straightforward, but very useful in strengthening my fundamental knowledge about numbers, strings, variables and assignment. Following Chris Pine's book was easy and helped in deepening my understanding of the Ruby basics.
