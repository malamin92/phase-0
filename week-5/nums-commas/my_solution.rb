# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode
=begin
# What is the input?
	The input is an integer.
# What is the output? (i.e. What should the code return?)
	The output is a string.
# What are the steps needed to solve the problem?
	1. Take the integer input and turn it into a string.
	2. Reverse the string
	3. Store the string character in an array
	4. Use enumerable methods to traverse each element
	5. Create a new array to hold the comma sperated values
	6. Add each element to the begining of the new array
	7. If the element's index is evenly divisible by three
		1. Push a comma to the begining of the array.
	8. Join the array seperated by commas.
=end

# 1. Initial Solution

# def separate_comma(number)
# 	char_array = number.to_s.reverse.chars
# 	comma_separated_array = []
# 	char_array.each_with_index do |char, index|
# 		comma_separated_array.unshift(",") if ((index) % 3) == 0 
# 		comma_separated_array.unshift(char)
# 	end
# 	comma_separated_array.delete_at(-1)
# 	comma_separated_array.join
# end

# 2. Refactored Solution

def separate_comma(number)
	char_array = number.to_s.reverse.chars
	comma_separated_array = []
	char_array.each_with_index do |char, index|
		comma_separated_array.unshift(",") if ((index) % 3) == 0 
		comma_separated_array.unshift(char)
	end
	comma_separated_array.join.chop
end

# 3. Reflection