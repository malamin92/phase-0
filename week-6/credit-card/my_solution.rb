# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: Mira Scarvalone ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: 16 digit number.
# Output: True or false.
# Steps: 
=begin
	0. Initialize the clas with 16 digit value.
		1. IF the values is less than 16 digits or greater than 16 digits
			1.Throw ArgumentError
	1. Def a function to split the 16 digit number
		1. Convert number to string for every number
		2. Return a array
	2. Def a function to double every other number in the array starting with 2nd element
		1. Convert every element to integer in the array
		2. *2 for every other element starting from the second element
		3. Return the new array.
	3. Def a function to sperate every 2 digit number
		1. Convert every element to a string
		2. Iterate the array and check if the number is two digits
			1. IF the digit is two, split that string.
				1. Convert the number to a integer
		3. Retrun the array of split numbers.
	4. Def check_card method to check if the card is valid
		1. Add every element of the array
		2. IF the array summed % 10 == 0 
			1. return true
			2. ELSE false

=end
# # Initial Solution

# # Don't forget to check on initialization for a card length
# # of exactly 16 digits

# class CreditCard
# 	def initialize(number)
# 		if number.to_s.length != 16
# 			raise ArgumentError.new("Please enter a 16 digit number!")
# 		end
# 		@card_number = number
# 	end

# 	def split_number
# 		@card_number.to_s.split("").collect{|number| number.to_i}
# 	end

# 	def double_number
# 		split_number.collect.with_index do |number, index| 
# 			if index.even?
# 				number*2
# 			else
# 				number
# 			end
# 		end
# 	end

# 	def split_double_numbers
# 		array_of_split_numbers = double_number.collect{|number| number.to_s}.collect do |number| 
# 			if number.length > 1
# 				number.split("")
# 			else
# 				number
# 			end
# 		end 
# 		array_of_split_numbers.flatten.collect{|number| number.to_i}
# 	end

# 	def check_card
#    		running_sum = 0
#    		split_double_numbers.each do |number|
#     		running_sum += number
#   		end
#    		if running_sum % 10 == 0
#      		return true
#    		else
#      		return false
#    		end
#  	end

# end

# #DRIVER CODE
# card = CreditCard.new(4408041234567901)
# # p card.split_number
# # p card.double_number
# # p card.split_double_numbers
# p card.check_card # returns true
# failing_card = CreditCard.new(4408041234567906) #return false
# p failing_card.check_card


# Refactored Solution

# Initial Solution

# Don't forget to check on initialization for a card length
# of exactly 16 digits

class CreditCard
	def initialize(number)
		if number.to_s.length != 16
			raise ArgumentError.new("Please enter a 16 digit number!")
		end
		@card_number = number
	end

	def split_number
		@card_number.to_s.split("").collect{|number| number.to_i}
	end

	def double_number
		split_number.collect.with_index do |number, index| 
			index.even? ? number*2 : number #Use ternary operator here.
		end
	end

	def split_double_numbers
		array_of_split_numbers = double_number.collect{|number| number.to_s}.collect do |number| 
			number.length > 1 ? number.split("") : number #Use ternary operator here.
		end 
		array_of_split_numbers.flatten.collect{|number| number.to_i}
	end

	def check_card
		#got ride of all this by usign reduce and ternary operator
   		running_sum = split_double_numbers.reduce(:+) % 10 == 0 ? true : false 
 	end

end

#DRIVER CODE
card = CreditCard.new(4408041234567901)
# p card.split_number
# p card.double_number
# p card.split_double_numbers
p card.check_card # returns true
failing_card = CreditCard.new(4408041234567906) #return false
p failing_card.check_card




# Reflection

=begin 
What was the most difficult part of this challenge for you and your pair?
	
	Thinking about the design was the most difficult part. It was hard deciding what each method we ran was going to
	return. Once we decided on the design it wasn't very hard to implement for us. We used the driver code to keep
	checks on all the methods we were running and everything went pretty smoothly after that. 

What new methods did you find to help you when you refactored?

	We found the reduce method! This method with the + symbol, adds every element of the array and returns the
	summed valued. This allowed us to reduce the #check_card method into one step. We also used the ternary
	operator a lot, which made our code look very clean and simple. It is a great replacement for the typical
	if/else statement.

What concepts or learnings were you able to solidify in this challenge?

	In this exercise, I was able to solidfy calling methods in another method. This is cool becuase it allows you to
	make your code modular. It also makes breaking down the problems we have much easier band makes your much cleaner
	because you don't have one long running function. Instead, a function is a combination of a bunch of different
	function.

=end
