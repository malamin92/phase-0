# Research Methods

# I spent [1] hours on this challenge.

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Ditto" => 3, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4, "Annabelle" => 0}

# Person 1's solution - Mohammad Amin
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

# Person 2
=begin
Pseudocode for my_array_modification_method!
INPUT: Obtain an container object that contains a collection of words and integers, and the amount you want to modify the number in the container object by.
FOR each element in the aray
    Ask if the element is a integer
    IF integer Then
        Add thing_to_modify to the integer
        Add the sum of that calculation to the array
    END IF
END FOR
  return container object with modifications
OUTPUT: Return the original container object with the integers inside modified by a certain amount
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
Pseudocode for my_hash_modification_method!
INPUT: Obtain a container object with a collection of words and numbers, and the amount you want to modify the number in the container object by
  FOR each value in the the hash
      Update the value by thing_to_modify
      return each key/value pair
  END FOR
OUTPUT: Return the original container object with the integer values modified by a certain amount
=end


def my_array_modification_method!(source, thing_to_modify)
    source.map! do |s|
        if s.is_a? String
             s
        else
            s += thing_to_modify
        end
    end
end

def my_hash_modification_method!(source, thing_to_modify)
  source.each { |key, value | source[key] = (value += thing_to_modify) }
end

=begin
Identify and describe the Ruby method(s) you implemented.
.map! takes each element of an array, passess it to a block, and builds a new array with the returned values.
I would used this method if you want to iterate through a container object, and return the calculated values from the code block.
.is_a takes a class as an argument.
Returns a boolean value of true if the receiver object is an instance of that class.Returns false if it's not.
I would use this method if you want to filter values based on whether or not an
object belongs to a certain class.
.each loops through each item in a array one by one, and yields that value to the
code block.
I would used this method if you want to iterate through a container object, but return the original array.
I didn't find any new tricks to reading the documentation, but the blog post by Maria was great.
It helped me sort through the documentation more easily.
I will say that opening irb and typing in the example does with understanding what the method does.
=end


# Person 3 - Jack Abernethy
def my_array_sorting_method(source)
  result = source.sort
end

def my_hash_sorting_method(source)
  result = source.sort_by { |a| [a[1], a[0]] }
end



# Identify and describe the Ruby method(s) you implemented.
# The array sorting method comes down to the .sort method.
# Sorting methods comes in the enumarable module which works
# for many types of objects. Running the enumerable sort requires the <=>
# function of the class that calls it, in this case array or hash. 
# The <=> operator compares two instances of an object and returns 1, 0 or -1 (<.>, =).
# 
# The sort method uses this method to implement a sorting
# algorithm, although you can override this by passing the
# function a block as I did in hash version of my function.
# 
# Thus to better understand how both work, it's best to 
# understand how their <=> operators work. The String <=>
# works by comparing two strings by alphabetical order. This
# starts with the first digit and will keep comparing until
# two values disagree. If the strings are of different lengths,
# but otherwise equal, it returns that the longer is greater.
# 
# The hash function doesn't have a <=> specified that I could find.
# Functionally the sort method sorts by key and not value. This happens
# because the sort function first turns the hash into an array of 
# 2 cell arrays ([key, value]). Thus when I specify a[1] in my method,
# a is each one of these arrays and thus a[1] would specify the value element.

# Person 4
def my_array_deletion_method!(source, thing_to_delete)
  source.delete_if do |item| 
    item.to_s.include? thing_to_delete
  end
  source
end

def my_hash_deletion_method!(source, thing_to_delete)
  source.delete(thing_to_delete)
  source
end



# Identify and describe the Ruby method(s) you implemented.
# I used the method delete, which removes an item (but doesn't return the modified hash or array, so you have to do that)
# Also used the method delete_if which gives delete a conditional
# And lastly used the method include? which double checks if the object has the secondary object located inside of it (in this case a string)
# Also used the to_s method to make sure I didn't get a fixnum error when iterating through the loop.



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
