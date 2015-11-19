# Research Methods

# I spent [] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  source.select{|item| item.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  source.select{|key, val| val == thing_to_find}.keys
end

# Identify and describe the Ruby method(s) you implemented.
=begin
  I implementd the Ruby method #select, which is available for both arrays and hashes. This method
  returns an array of elements that passes the condition specified in a given block. I also used the
  #include? method which returns true if the argument passed into the method is present in the object
  the method is called on. 
=end

# # Person 2
# def my_array_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_modification_method!(source, thing_to_modify)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 3
# def my_array_sorting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_sorting_method(source)
#    source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 4
# def my_array_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_deletion_method!(source, thing_to_delete)
#   source.dup # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# # Identify and describe the Ruby method(s) you implemented.
# #
# #
# #


# # Person 5
# def my_array_splitting_method(source)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# def my_hash_splitting_method(source, age)
#   source # This line is here to make sure all tests initially fail. Delete it when you begin coding.
# end

# Identify and describe the Ruby method(s) you implemented.
#
#
#


# Release 1: Identify and describe the Ruby method you implemented. Teach your
# accountability group how to use the methods.

=begin

Identify and describe the Ruby method you implemented

  I implementd the Ruby method #select, which is available for both arrays and hashes. This method
  returns an array of elements that passes the condition specified in a given block. I also used the
  #include? method which returns true if the argument passed into the method is present in the object
  the method is called on. 

Teach your accountability group how to use the methods

  As you can see in my solution, the main method I used is the #select method. This method can be used
  with a hash or array, and does the same thing in both. I called the select method, which is an enumerable
  and goes through each element of the array or hash that it is called on. When going through the elements,
  I used the #include? method, which takes an argument and returns true if the argment is present in the 
  object that it is called on. If the condition is true, the select method will add that object to the
  array which it returns, and in the hashes case, the object is included in the hash that it returns. 
  In the case with the case with the array, I didn't have to do anything else because the #select method
  returns an array that fits all the conditions specified in the block. However, with the hash, I used the
  #keys method because the #select methods returns a hash with key and value pairs that pass the condition
  of the slect method. The #keys method then returned an array of all the keys of that hash, and hence the
  answer. 

Share any tricks you used to find and decipher the Ruby Docs

  When using Ruby docs, I try to just look for methods with similar names to what I am trying to do. Also,
  the link provided has good guidelines, so I suggest you all read that. Finally, if neither helps, you can
  always your good old friend, google.

=end


# Release 3: Reflect!
# What did you learn about researching and explaining your research to others?

=begin
  
  One thing for sure is that when you have to teach others, it really helps you learn better yourself. You
  really have to think of how you're doing things so that you can explain something clearly to someone who
  doesn't share the same knowledge. You have to think of each step you're doing and why you're doing it because
  someone might ask a question about that step. All this really helps you solidify your learning.

=end
