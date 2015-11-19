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
		Push a comma to the begining of the array.
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
	comma_separated_array = []
	number.to_s.reverse.chars.each_with_index do |char, index|
		comma_separated_array.unshift(",") if ((index) % 3) == 0 
		comma_separated_array.unshift(char)
	end
	comma_separated_array.join.chop
end

# 3. Reflection
=begin
What was your process for breaking the problem down? What different approaches did you consider?
	
	At first I considered breaking the the string down into groups of three and joining the arrays, and the joining the
	whole array by commas, however, as I was thinking of ways to pseudocode this, I realized that I had no idea how to
	split a string like that. Then I thought I'd just work with each element of an array and just spereate those by commas
	depending on what the index was. It helped that I knew a good batch of Ruby methods when it came to working with
	enumerable and arrays that really helped me keep my options open. It took me a while to think of proper pseudocode,
	I had to really think about it and draw it out on paper to get the solution that I finally came to.

Was your pseudocode effective in helping you build a successful initial solution?
	
	Yeah, the pseudocode most certainly helped. I think without it I would have been all over the place. The pseudocode
	was like a map, I just had to follow the directions to get to my destination. I did leave out a couple of things
	that I had to improvise on in my inital code, for example, I didn't think about how 0%3 is equal to 0, so I'd get
	that extra comma at the end of my string, thankfully it was an easy fix.

What new Ruby method(s) did you use when refactoring your solution? 
Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). 
Did it/they significantly change the way your code works? If so, how?
	
	When refactoring, the only new Ruby method that I used was chop. It helped me cut down an entire line of code
	in my final solution. To be honest, when looking thorugh Ruby docs I couldn't find anything in particular that
	would help me solve this problem, other than what I'd already used. I was surprised because I always expect a 
	lot of magic from Ruby, or maybe I just didn't look hard enough. The refactoring I did, didn't change the
	way my program worked at all, it kept the same structure and logic. 

How did you initially iterate through the data structure?

	I initially iterated through the array data structure using a .each_with_index method. I thought this made sense because
	I wanted to keep track of the the index as it helped me decide where to place commas. I could have used a more manual
	approach and gone with a while loop where I manually entered I, but I already knew of this Ruby method so I thought
	I'd use it instead. I think the most interesting method I used in my solultion is the unshift method which works
	in the opposite way of the #push method, it adds something to the begining of an array and shifts everything else to
	the right, so the newest element added is at index[0].

Do you feel your refactored solution is more readable than your initial solution? Why?

	Looking at my original solution and my refactored one, I think that they both have their ups and downs. While I took
	out the char_array in the original solution, I don't think it helped make the program more readable. I think it's more
	clear as to what's going on if you look at the first solution becuase chaining methods like I did in the refactored 
	solution might make it more unlcear to a reader looking at the program. On the other hand, the last line that I refactored
	is a bit more readable, I think. I think the [-1] index refrence may be a little more confusing to look at than 
	something like #chop which is a well known Ruby method.

=end