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
