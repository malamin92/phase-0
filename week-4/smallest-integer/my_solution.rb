# Smallest Integer

# I worked on this challenge by myself.

# smallest_integer is a method that takes an array of integers as its input
# and returns the smallest integer in the array
#
# +list_of_nums+ is an array of integers
# smallest_integer(list_of_nums) should return the smallest integer in +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def smallest_integer(list_of_nums)
  # Your code goes here!
  return nil if list_of_nums.empty?

  smallest = list_of_nums[0]
  i = 1
  while(i < list_of_nums.size)
  	smallest = list_of_nums[i] if list_of_nums[i] < smallest
  	i += 1
  end

  return smallest
end

# In the my_solution.rb file:

# Write a method smallest_integer which takes as its input an Array of integers and returns the smallest integer in theArray.

# For example:

# smallest_integer([1, 2, 3])       # => 1
# smallest_integer([0, -10, 10])    # => -10
# smallest_integer([-10, -20, -30]) # => -30
# If the input Array is empty smallest_integer should return nil.

# For the initial solution, focus on using iteration. Avoid using any built in Ruby methods you find in the docs. Keep the solution pretty simple. 