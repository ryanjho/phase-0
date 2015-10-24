# Release 2: Mini challenges

# Full name greeting: Write a program that asks for a person's first name, then middle, then last. Finally, it should greet the person using their full name.
puts "Hello there. May I know your first name?"
first_name = gets.chomp
puts "May I know your middle name?"
middle_name = gets.chomp
puts "May I have your last name?"
last_name = gets.chomp
puts "Hello there, " + first_name + " " + middle_name + " " + last_name +"! :)"

# Bigger, better favorite number: Write a program that asks for a person's favorite number. Have your program add 1 to the number, and then suggest the result as a bigger and better number.
puts "Kindly input your favorite number: "
favorite_number = gets.chomp
bigger_number = favorite_number.to_i + 1
puts "After some magic, your favorite number is now a bigger and better number: #{bigger_number} !"


=begin

How do you define a local variable?
- You just need to create a name for the local variable and assign it (using the "=" operator) to something (e.g. String, Integer, Float, etc)
```ruby
new_variable = "Hello world. I am a string"
```

How do you define a method?
- You define a method by using "def" and "end" to declare the method:
```ruby
def foo
	#insert whatever you want the method to do
end
```

What is the difference between a local variable and a method?
- A local variable points to an object (i.e. string, integer, float, etc.) and can be accessed by referencing the local variable. On the other hand, a method does something.
- A good analogy is that a local variable is like a noun in the Ruby language, and the method is the verb. A method is an action that an object can do by calling the method on the object.

How do you run a ruby program from the command line?
- Input `ruby file_name.rb` in the command line

How do you run an RSpec file from the command line?
- Input `rspec file_name.rb` in the command line

What was confusing about this material? What made sense?
- Understanding rspec was a little confusing. Copying the rspec files from the onine directory was straightforward. But I had to do some additional research on rspec files to understand a bit more on how this works.


=end