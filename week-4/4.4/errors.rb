# Analyze the Errors

# I worked on this challenge by myself
# I spent 1 hours on this challenge.

# --- error -------------------------------------------------------

cartmans_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
end; end
# errors.rb:170: syntax error, unexpected end-of-input, expecting keyword_end
# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
# => The name of the file is 'errors.rb' file.
# 2. What is the line number where the error occurs?
# => Error occurs at line 170
# 3. What is the type of error message?
# => Error is a syntax error
# 4. What additional information does the interpreter provide about this type of error?
# => The interpreter did not expect athe end of input. It was expecting an `end` command instead at line 170.
# 5. Where is the error in the code?
# => The error in the code occurs at line 15, where an `end` command was missing after the while loop.
# 6. Why did the interpreter give you this error?
# => It gave this error because it could not execute the cartman_hates method due to the missing 'end' command for the while loop nested inside the method.

# --- error -------------------------------------------------------

south_park = ""
# errors.rb:35:in `<main>': undefined local variable or method `south_park' for main:Object (NameError)
# 1. What is the line number where the error occurs?
# => Line 35
# 2. What is the type of error message?
# => It is a Name error for local variable 'south_park'
# 3. What additional information does the interpreter provide about this type of error?
# => 'south_park' local variable is undefined.
# 4. Where is the error in the code?
# => The given name, 'south_park', for the local variable is undefined. A value needs to be assigned to this local variable.
# 5. Why did the interpreter give you this error?
# => It could not find what value does this local variable, 'south_park', points to.

# --- error -------------------------------------------------------

def cartman(); end
# errors.rb:50:in `<main>': undefined method `cartman' for main:Object (NoMethodError)
# 1. What is the line number where the error occurs?
# => Line 50
# 2. What is the type of error message?
# => No method error
# 3. What additional information does the interpreter provide about this type of error?
# => The method, 'cartman()' is undefined.
# 4. Where is the error in the code?
# => The error in the code is the missing definition for the method, 'cartman()'
# 5. Why did the interpreter give you this error?
# => It could not find the definition of the method 'cartman()' in the document and wanted to prompt the user to define the 'cartman()' method

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()
# errors.rb:65:in `cartmans_phrase': wrong number of arguments (1 for 0) (ArgumentError) from errors.rb:69:in `<main>'
# 1. What is the line number where the error occurs?
# => Line 65
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments passed into the method. It gave a (1 for 0) information, indicating 1 argument passed into the method but 0 arguments allowed.
# 4. Where is the error in the code?
# => The error in the code reside on line 69, where an argument, 'I hate Kyle', is passed into the method.
# 5. Why did the interpreter give you this error?
# => It gave this error to highlight the error of passing an argument into the 'cartmans_phrase()' method, where no arguments were defined as parameters in the method definition

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("You are an idiot!")
# errors.rb:84:in `cartman_says': wrong number of arguments (0 for 1) (ArgumentError)
# 1. What is the line number where the error occurs?
# => Line 84
# 2. What is the type of error message?
# => Arugument Error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments passed into the method (0 for 1). A
# 4. Where is the error in the code?
# => Error is in line 88, where no argument is passed into the method where one argument is required.
# 5. Why did the interpreter give you this error?
# => To highlight the error of the missing argument needed to pass into the 'cartman_says()' method



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Ryan')
# errors.rb:105:in `cartmans_lie': wrong number of arguments (1 for 2) (ArgumentError)
# 1. What is the line number where the error occurs?
# => Line 105
# 2. What is the type of error message?
# => Argument error
# 3. What additional information does the interpreter provide about this type of error?
# => Wrong number of arguments (1 for 2), where only one argument was passed into the method, but it requires two arguments to be passed.
# 4. Where is the error in the code?
# => The error is in line 109, where only 1 argument is passed into the method, but two arguments are needed.
# 5. Why did the interpreter give you this error?
# => It gave this error to highlight to the user to add an additional argument to the method to compile successfully

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5
# errors.rb:124:in `*': String can't be coerced into Fixnum (TypeError)
# 1. What is the line number where the error occurs?
# => Line 124
# 2. What is the type of error message?
# => Type error
# 3. What additional information does the interpreter provide about this type of error?
# => String cannot be coerced into Fixnum
# 4. Where is the error in the code?
# => The error is having the integer, 5, being multipled by "Respect my authoritay!" times, which is incorrect.
# 5. Why did the interpreter give you this error?
# => It gave this error because the order of this code statement is incorrect as we are taking 5 as the object, and calling the method "Respect my authoritay!" on the object.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/10

# errors.rb:139:in `/': divided by 0 (ZeroDivisionError)
# 1. What is the line number where the error occurs?
# => Line 139
# 2. What is the type of error message?
# => Zero Division Error
# 3. What additional information does the interpreter provide about this type of error?
# => It has to do with the '/' command, which is trying to divide the integer by 0
# 4. Where is the error in the code?
# => The error is raised when an integer is divided by exact 0 (not a float like 0.0)
# 5. Why did the interpreter give you this error?
# => It gave the error because the integer, 20, is attempting to be divided by 0.

# --- error -------------------------------------------------------

require_relative "cartmans_essay.rb"
# errors.rb:155:in `require_relative': cannot load such file -- /Users/junliangho/phase-0/week-4/4.4/cartmans_essay.md (LoadError)
# 1. What is the line number where the error occurs?
# => Line 155
# 2. What is the type of error message?
# => Load Error
# 3. What additional information does the interpreter provide about this type of error?
# => The file, cartmans_essay.md, with the filepath, '/Users/junliangho/phase-0/week-4/4.4/cartmans_essay.md' cannot be loaded
# 4. Where is the error in the code?
# => The error is in the file name, where the interpreter cannot find the filename 'cartmans_essay.md'
# 5. Why did the interpreter give you this error?
# => It attempted to load the file 'cartmans_essay.md' but could not find it in the local directory. I tried to create the file "cartmans_essay.md" in the same directory, and ran the code, but could not load the .md extension. I changed it to .rb extension and found it to work.

=begin
# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.
Which error was the most difficult to read?
- The most difficult error to read was Syntax error with unexpected end-of-input, expecting keyword_end information and line number 170.
- It was initially quite surprising to find the error line to be 170, but then it became clear to understand that the interpreter was trying to indicate a missing 'end' statement in the errors.rb document

How did you figure out what the issue with the error was?
- It became immediately apparent after looking at the code block and realizing that the while loop had a missing 'end' statement

Were you able to determine why each error message happened based on the code? 
- Yes, I was mostly able to determine why each error message happened based on the code.

When you encounter errors in your future code, what process will you follow to help you debug?
- I will follow the process that I went through for this challenge, looking at the error message, identifying where it is and what type of error message, and trying to debug if I know what it is. If I do not, the error type makes it very useful to do extra research in Ruby documentation to find out how to solve it.
=end