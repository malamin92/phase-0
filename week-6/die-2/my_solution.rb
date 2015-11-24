# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Initialize class with an Array.
# Output: The #roll method returns a random string from an array.
# Steps:
=begin
	1. Initialize class with an array and save that
=end

# Initial Solution

# class Die

#   def initialize(labels)
#   	if labels.size < 1
#   		raise ArgumentError.new("Please enter a valid number of sides in an array.")
#   	end
#   	@labels = labels
#   end

#   def sides
#   	@labels.length
#   end

#   def roll
#   	pick_index = rand(0..@labels.length-1)
#   	return @labels[pick_index]
#   end
# end



# Refactored Solution

class Die

  def initialize(labels)
  	if labels.size < 1
  		raise ArgumentError.new("Please enter a valid number of sides in an array.")
  	end
  	@labels = labels
  end

  def sides
  	@labels.length
  end

  def roll
  	@labels.sample
  end
end




# Reflection
=begin 
What were the main differences between this die class and the last one you created in terms of implementation? 
Did you need to change much logic to get this to work?
	
	The main difference between this one and the last die class was that this one involved an array as an input. Aslo
	the way that the roll method is implemented is different because you have to pick a random number out of the array
	rather than up to a certain number. The sides method involves getting a length of the array rather than just 
	returning a certain number that is the number of sides. Basically this method just revolves around an array
	while the last one revolved around just one number that was the sides.

What does this exercise teach you about making code that is easily changeable or modifiable?

	This exercise shows that you can change the logic of a method but still keep the basic concept the same in the
	methods. The methods in this class and the previous involved getting numbers from an input, but the way that
	number is returned is different. The logic of the two classes are similar but the means to which they are implemented
	are different because they involve different kinds of data.

What new methods did you learn when working on this challenge, if any?

	I learned the #sample method which returns a random number from an array. This is much more useful than then
	random method I wrote in my original solution.

What concepts about classes were you able to solidify in this challenge?

	Classes are very useful in that they capture data and methods that have to do with each other. This is very
	powerful and opens up many doors when it comes to designing a system.

=end
