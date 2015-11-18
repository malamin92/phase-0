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

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  new_array = array.dup
  if array.size == min_size
  	return new_array
  else
    while min_size > new_array.size
      new_array << value
    end
  end
  return new_array
end


# 3. Refactored Solution

def pad(array, min_size, value = nil) #non-destructive
  # Your code here
  pad!(array.dup, min_size, value)
end

# 4. Reflection

=begin
Were you successful in breaking the problem down into small steps?
	
	Yes, breaking the problem into smaller steps helped a lot with finding a solution. We were able to pseudocode
	the solution into a general idea of what we wanted to do. Then, when it came to the actual coding, we just
	implemented those steps into Ruby code and have an answer. Due to the small steps, we were able to have a
	plan in hand before trying to tackle the problem.

Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?

	Once the pseudocode was written, it was pretty straight forward to implement a solution. We were able to just
	follow the steps we wrote. Then, when it came down to the coding, we just followed the steps we laid out
	for ourselves. Since the pseudocode is mostly just general steps, it was sometimes difficult to get the 
	specific implementation we were looking for. 

Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?

	Our initial solution did not pass all the tests. There was a flaw in our logic in that when you save an array
	to a variable, even though the variable has a different name, it still affects the original saved array when doing
	operations. Ruby does not create a new space in memory for referenced arrays, so you have to use the .dup to assign
	a copy of an array to another variable, this way the new variable will have its own place in memory and be 
	its own entity. Once we figured this out, all our problems were solved.

When you refactored, did you find any existing methods in Ruby to clean up your code?
	No, what we did when we refractored was that we essentially just made our code more DRY. Because the destructive and
	non-destructive methods were doing the same logic and returning different objects, we just made it so that second
	method just calls the first method and save the result in a new variable to be returned. This saved a lot
	of repeated code and logic.

How readable is your solution? Did you and your pair choose descriptive variable names?
	
	We used descriptive names for a new_array that we created. All the other variables were provided in the outline
	in the file so we kept those the same. All we did was change the first argument of the array so that the 
	non destructive method took a duplicate of the input array instead of the array directly. My pair and I
	both agreed on the names that we chose.

What is the difference between destructive and non-destructive methods in your own words?

	A destructive method is when the returned object is the original method but modified with certain conditions,
	whatever method was run on the object. A non-destructive method is when a copy of an object returned modified,
	but the original object remains the same. In a non-destructive method, it is safe to say that original 
	input is not affected by the opertions done on the object. 

=end