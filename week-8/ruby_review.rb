# Cipher Challenge

# I worked on this challenge by myself
# I spent 2 hours on this challenge.

# 1. Solution
# Write your comments on what each thing is doing.
# If you have difficulty, go into IRB and play with the methods.

# def dr_evils_cipher(coded_message)
#   input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the Ruby docs.
#   decoded_sentence = []
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",	  # Using a hash is not the best data structure for this problem as it is not as efficient to access hash values as compared to array values.
#             "h" => "d",   # Furthermore, in this case, it is not important to have customizable keys as indexes, hence using an array could be more appropriate
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # What is #each doing here? It is looping through each letter stored in the array, input.
#     found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
#     cipher.each_key do |y| # What is #each_key doing here?
#       if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really? x==y is comparing each character stored in the input array (denoted by x) with each key in the cipher hash (denoted by y).
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? A break statement is included here to break out of the loop iteration through the cipher hash keys once each control flow use case is matched.
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? This is adding a space to the decoded message if the character stored in the input array matches such characters
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do? This creates an array that stores each number from the range of 0 to 9 (inclusive)
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? This is essentialy an unless statement, where if found_match is false, then the code block will be executed
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("")
#   #What is this method returning? Method is returning the string, decoded_sentence.
# end

# Your Refactored Solution

def dr_evils_cipher(coded_message)
	input = coded_message.downcase.split("")
	decoded_sentence = []
	alphabet_array = ("a".."z").to_a
	input.each do |character|
		if alphabet_array.include?(character)
			char_index = alphabet_array.index(character) - 4
			char_index += 26 if char_index < 0
			decoded_sentence << alphabet_array[char_index]
		elsif character == "@" || character == "#" || character == "$" || character == "%"|| character == "^" || character == "&"|| character =="*"
			decoded_sentence << " "
		else
			decoded_sentence << x
		end
	end
	return decoded_sentence.join("")
end


# Driver Test Code:
p dr_evils_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver test code and should print true
# Find out what Dr. Evil is saying below and turn it into driver test code as well. Driver test code statements should always return "true."
p dr_evils_cipher("syv%ievpc#exxiqtxw&ex^e$xvegxsv#fieq#airx%xlvsykl$wizivep#tvitevexmsrw.#tvitevexmsrw#e*xlvsykl#k&aivi%e@gsqtpixi&jempyvi.
&fyx%rsa,$pehmiw@erh#kirxpiqir,%ai%jmreppc@lezi&e&asvomrk%xvegxsv#fieq,^almgl^ai^wlepp%gepp@tvitevexmsr^l")
p dr_evils_cipher("csy&wii,@m'zi@xyvrih$xli*qssr$mrxs&alex@m#pmoi%xs#gepp%e^hiexl#wxev.")
p dr_evils_cipher("qmrm#qi,*mj^m#iziv^pswx#csy#m^hsr'x%orsa^alex@m%asyph^hs.
@m'h%tvsfefpc%qszi$sr%erh*kix#ersxliv$gpsri@fyx*xlivi@asyph^fi@e^15&qmryxi@tivmsh%xlivi$alivi*m*asyph&nywx^fi$mrgsrwspefpi.")
p dr_evils_cipher("alc@qeoi*e$xvmppmsr^alir#ai*gsyph%qeoi...#fmppmsrw?")

# Reflection
# Keep your reflection limited to 10-15 minutes!
# What concepts did you review or learn in this challenge?
# - I definitely reviewed on iterating and accessing arrays through this challenge. It was good to also remember how to keep the code as DRY as possible, and ensure that variable names are clear
# What is still confusing to you about Ruby?
# - I hope to continue beefing up on my algorithm problem-solving by working on more Ruby challenges and also solidifying my understanding of the various methods available in Ruby Docs
# What are you going to study to get more prepared for Phase 1?
# - I plan to take the Christmas break to review all of the concepts learned - from HTML5, CSS, Ruby to JavaScript and also SQL.
# - I hope to continue strengthening my understanding through continued practice and additional challenges.