# I worked on this challenge [by myself, with: ].


# Your Solution Below

def valid_triangle?(a, b, c)
  if a + b > c and b + c > a and a + c > b
    return true
  else
    false
  end
end


# Write a method valid_triangle? which takes as its input three non-negative numbers. It should return true if the three numbers could form the side lengths of a triangle and false otherwise.

# The arguments don't correspond to specific sides. Don't worry about handling negative inputs — garbage in gets garbage out.

# Note: When you see a method that has a ? in its name, that means the expected result is a boolean value. It should return true or false. Keep this in mind when working through later challenges or writing your own challenges.

# For example,

# valid_triangle?(0,0,0) # => false, because a triangle can't have 0-length sides

# valid_triangle?(1,1,1) # => true, an equilateral triangle

# valid_triangle?(3,4,5) # => true, a right triangle
# valid_triangle?(4,3,5) # => true, the same right triangle
# valid_triangle?(5,3,4) # => true, the same right triangle

# valid_triangle?(10, 10, 100) #=> false, no such triangle exists