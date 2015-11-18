# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input?

# What is the output? (i.e. What should the code return?)
# What are the steps needed to solve the problem?


# 1. Initial Solution
def pad!(array, min_size, value = nil) #destructive
  # Your code here
  if array.size == min_size
    return array
  else
    while min_size > array.size
      array << value
    end
  end
  return array
end

# def pad(array, min_size, value = nil) #non-destructive
#   # Your code here
#   new_array = array.dup
#   if array.size == min_size
#   	return new_array
#   else
#     while min_size > new_array.size
#       new_array << value
#     end
#   end
#   return new_array
# end

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  pad!(array.dup, min_size, value)
end

p pad([1,2,3], 5)


# 3. Refactored Solution



# 4. Reflection
