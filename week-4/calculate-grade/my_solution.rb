# Calculate a Grade

# I worked on this challenge [by myself, with: Mira Scarvalone].


# Your Solution Below

def get_grade(average)
  if average >= 90
    return "A"
  elsif average >= 80
    return "B"
  elsif average >= 70
    return "C"
  elsif average >=60
    return "D"
  else
    return "F"
  end
end

# Create a method get_grade that accepts an average in the class and returns the letter grade as a String.

# It should only return one of 'A', 'B', 'C', 'D', and 'F'. Don't worry about + and - grades.

# For example,

# get_grade(89) # => returns "B", *not* "B+"
# get_grade(70) # => returns "C"