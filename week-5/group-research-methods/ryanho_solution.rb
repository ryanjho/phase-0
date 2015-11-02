# Research Methods

# I spent 1 hour on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}


# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  #Code added here:
  source.reject! {|array_string| array_string.to_s.index(thing_to_delete) != nil}
  return source
end

def my_hash_deletion_method!(source, thing_to_delete)
  #Code added here:
  source.reject! {|key| key == thing_to_delete }
  return source
end

# Identify and describe the Ruby method(s) you implemented.
# For both array and hash deletion methods, I used the .reject! method
# For the array method, I used the .to_s and .index methods to check if each string in the array contained the user entered letter.


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?
# I learned a lot from researching the different methods from the Ruby Docs and Well-Grounded Rubyist books.
# It took me a while to learn how to search effectively from the Ruby Docs resource, but reading the blog post from Maria B Piper helped a lot
