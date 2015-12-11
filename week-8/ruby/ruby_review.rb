# I worked on this challenge [by myself, with: ].
# This challenge took me [#] hours.


# Pseudocode
=begin
1. create a funtction that accepts an array as its argument.
2. in the function, declare another variable that holds an empty array
3. iterate through each element of the input array
4. IF the element at the index % 3*5 == 0, push "FizzBuzz" to the empty array
	ELSIF the element at the index % 5 == 0, push "Buzz" to the empty array
	ELSIF the element at the index % 3 == 0, push "Fizz" to the empty array
	ELSE push the element at index to the empty array
5. return the newly created array that's filled with fizzedbuzzed elements.
=end

# Initial Solution
# def super_fizzbuzz(array)
# 	fizz_buzzed_array = []
# 	i = 0
# 	while (i < array.length)
# 		if array[i] % (3*5) == 0
# 			fizz_buzzed_array << "FizzBuzz"
# 		elsif array[i] % 5 == 0
# 			fizz_buzzed_array << "Buzz"
# 		elsif array[i] % 3 == 0
# 			fizz_buzzed_array << "Fizz"
# 		else
# 			fizz_buzzed_array << array[i]
# 		end
# 		i += 1
# 	end
# 	fizz_buzzed_array
# end
# Refactored Solution
# a more ruby approach

def super_fizzbuzz(array)
	array.collect do |element|
		if element % (3*5) == 0
			"FizzBuzz"
		elsif element % 5 == 0
			"Buzz"
		elsif element % 3 == 0
			"Fizz"
		else 
			element
		end
	end
end

# Reflection
=begin 
What concepts did you review or learn in this challenge?

	For this challenge I reviewd conditionals and iteration. I used a while loop to iterate
	as well as the enumerable #collect. I also used the if/elsif/if conditionals to have my 
	program branch depending on certain conditions. I also reviewed working with arrays in Ruby.

What is still confusing to you about Ruby?

	At this point, I don't feel particularly confused about any part of Ruby, reather I'd like
	to learn more about how to to make it all come together.

What are you going to study to get more prepared for Phase 1?

	I'm going to study mroe about Ruby classes, recursion and composition in order to get ready
	for phase 1. I feel like if I can solidify those concepts well, I will have a good shot at
	going through phase 1 smoothly. Also, I would like to study more JS if I have some time.

=end
