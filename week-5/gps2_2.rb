# This pad is reserved for a student in the Chorus Frogs cohort. 
# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # [fill in any steps here]
  # set default quantity = 1
  # seperate the input string by the spaces
  # assign each item to the hash which sets default value
  # print the list to the console [can you use one of your other methods here?]
# output: [what data type goes here, array or hash?]

# Method to add an item to a list
# input: item name and optional quantity (set default value = 1)
# steps: set list[item] = quantity
# output: return list hash

# Method to remove an item from the list
# input: name of item to be deleted
# steps: list[item].delete
# output: list hash

# Method to update the quantity of an item
# input: input = existing item key and new quantity
# steps: lsit[item] = new quantity
# output: list hash

# Method to print a list and make it look pretty
# input: list hash
# steps: take each item on the list hash and print each item : quantity on a new line
# output: printed list

# # list_hash = Hash.new(1)
# def create_list (string)
#   list_hash = Hash.new(1)
#   list_array = string.split(" ")
#   list_array.each do |item|
#     list_hash[item] = 1 
#   end
#   # print_list(list_hash)
#   return list_hash
# end

# def add_item(list, item, quantity = 1)
#   list[item] = quantity
#   return list
# end

# def remove_item(list, item)
#   # list_hash[item].delete
#   list.delete(item)
#   return list
# end

# def update_item(list, item, quantity)
#   list[item] = quantity
#   return list
# end

# def print_list(list)
#   list.each do |item, quantity|
#     puts item + ": " + quantity.to_s
#   end
# end


# ## DRIVER CODE

# p katys_list = create_list("banana")

# p add_item(katys_list, "apple")

# print_list(katys_list)

# p remove_item(katys_list, "apple")

# p update_item(katys_list, "banana", 16)
# # 



def create_list (string)
  list_hash = Hash.new
  list_array = string.split(" ")
  list_array.each do |item|
    add_item(list_hash, item)
  end
  print_list(list_hash)
  return list_hash
end

def add_item(list, item, quantity = 1)
  list[item] = quantity
  return list
end

def remove_item(list, item)
  # list_hash[item].delete
  list.delete(item)
  return list
end

def update_item(list, item, quantity)
  list[item] = quantity
  return list
end

def print_list(list)
  list.each do |item, quantity|
    puts item + ": " + quantity.to_s
  end
end


## DRIVER CODE

p katys_list = create_list("banana")

p add_item(katys_list, "apple")

print_list(katys_list)

p remove_item(katys_list, "apple")

p update_item(katys_list, "banana", 16)
# 

=begin
What did you learn about pseudocode from working on this challenge?

	Pseudocode is actually very helpful. It is pretty much the same as wireframes. I found it useful to
	have a layout of what to work on while coding. Having an idea of what to do helps keep the programming
	process going. It also gives a vague idea of what steps to take when writing an algorithm to solve a 
	problem. On the other hand, pseudocode defintely doesn't always wortout the way you planned and 
	implementing specfics in a coding language is still a different challenge on its own.

What are the tradeoffs of using Arrays and Hashes for this challenge?

	Arrays are great for holding data that needs to be iterated over. Arrays make it easy to hit every
	piece of data in order and do something to that data. Arrays however, are not the best for refering to
	data point. For that, we use a hash. Using a specific key instead of an index number makes it way more
	easier to visualize what the elements of a hash is holding. 

What does a method return?
	
	A method returns whatever you specify. If nothing is specified, a method will return whatever the last
	object in the method is (in the last line). If you user 'return' to specify something specific to return,
	the method will end right there after the return and not continue to any other lines in the method.

What kind of things can you pass into methods as arguments?
	
	You can pass anything into a method. Arguments can be any kind of Ruby object with no limitations. In 
	our case, we passed a hash, a string, and array and an integer. You can also pass many kinds of arguments
	into a single method and then refer to them individually.

How can you pass information between methods?
	
	You can pass information between methods by having a variable hold certain information then passing
	that variable to a method. In our case, we created a variable called katys_list and ran a method on it
	called create_list which returned a hash that is assigned to the katys_list variable. Then we passed that
	variable to multiple methods which all refered to katys_list. That was, information in katys_list was
	being changed between all the methods being called on it because each method got passed the information
	that katys_list holds.

What concepts were solidified in this challenge, and what concepts are still confusing?

	The concept that was solidified to me the most is the idea of scopes of variables. Initially, we tried to
	define a global variabe as a place holder for a list, however, in Ruby, anytime a variable is outside
	the scope of a method, it is a local variable. This concept was not clear to me before this GPS, with Katy's
	help I was able to learn that. It really changes the way I think about things now. Everything else I
	understood from this challenge. 

=end
