# # Your Names
# # 1) Ryan Ho
# # 2) Shawn Spears

# # We spent 1 hour on this challenge.

# # Bakery Serving Size portion calculator.

# def serving_size_calc(item_to_make, order_quantity)
#   library = {"cookie" => 1, "cake" =>  5, "pie" => 7}
#   error_counter = 3

#   # Iterating through library Hash and checking if item_to_make exists in Hash, using error_counter
#   library.each do |food|
#     if library[food] != library[item_to_make]
#       p error_counter += -1
#     end
#   end

#   # Checking, based on error_counter, if item_to_make exists in library Hash. If not, it raises an ArgumentError
#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end

#   #  Returns an array with values associated with the key indicated.
#   # Returns modulus of order quantity divided by serving size
#   serving_size = library.values_at(item_to_make)[0]
#   serving_size_mod = order_quantity % serving_size

#   # If number of servings is evenly divisble by serving size return number of items to make.
#   # If not, then return number of leftover ingredients plus suggested option of what we can do for the leftover ingredients.
#   case serving_size_mod
#   when 0
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{order_quantity/serving_size} of #{item_to_make}, you have #{serving_size_mod} leftover ingredients. Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
# end


# REFACTOR

def serving_size_calc(item_to_make, servings_needed)
  library = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  raise ArgumentError.new("#{item_to_make} is not a valid input") if library.has_key?(item_to_make) == false


  serving_size = library[item_to_make]
  servings_still_needed = servings_needed % serving_size

#   # Case 1: Combination of cake + cookies
#   combination_cake = servings_still_needed / library["cake"]
#   combination_cookie = servings_still_needed % library["cake"]

  
#   # Case 2: All cookies
#   cookies_only = servings_still_needed / library["cookie"]
  
  if servings_still_needed == 0
    return "Calculations complete: Make #{servings_needed/serving_size} of #{item_to_make}(s)"
  else
    return "Calculations complete: Make #{servings_needed/serving_size} of #{item_to_make}(s), you have #{servings_still_needed} servings still needed to fufill the order. Suggested baking items: #{servings_needed} cookie(s)"
  end
end

p serving_size_calc("pie", 7)
p serving_size_calc("pie", 8)
p serving_size_calc("cake", 5)
p serving_size_calc("cake", 7)
p serving_size_calc("cookie", 1)
p serving_size_calc("cookie", 10)
# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
# What did you learn about making code readable by working on this challenge?

# Did you learn any new methods? What did you learn about them?
# What did you learn about accessing data in hashes? 
# What concepts were solidified when working through this challenge?


