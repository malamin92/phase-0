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

