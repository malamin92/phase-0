# Largest Integer

# I worked on this challenge [by myself].

# largest_integer is a method that takes an array of integers as its input
# and returns the largest integer in the array
#
# +list_of_nums+ is an array of integers
# largest_integer(list_of_nums) should return the largest integer in the +list_of_nums+
#
# If +list_of_nums+ is empty the method should return nil

# Your Solution Below
def largest_integer(list_of_nums)
  # Your code goes here!
  return nil if list_of_nums.empty?

  largest = list_of_nums[0]
  i = 1
  while(i < list_of_nums.size)
  	 largest = list_of_nums[i] if list_of_nums[i] > largest
  	 i += 1
  end
  return largest
end
