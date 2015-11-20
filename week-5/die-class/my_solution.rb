# Die Class 1: Numeric

# I worked on this challenge [by myself, with: ]

# I spent [.5] hours on this challenge.

# 0. Pseudocode

# Input: Integer
# Output: Random number less than or equal to input.
# Steps:
=begin
	1. Create initialize method to take an argument 'sides'
	2. Set sides to an instance variable/
	3. The instance method #sides should just return the instance variable sides.
	4. Define a function roll, that returns a random number between 1 and including sides.
=end
# 1. Initial Solution

# class Die
#   def initialize(sides)
#     # code goes here
#     unless(sides > 0)
#     	raise ArgumentError.new("Die must have more than 0 sides.")
#     end
#     @sides = sides
#   end

#   def sides
#     # code goes here
#     @sides
#   end

#   def roll
#     # code goes here
#     rand(1..sides)
#   end
# end



# 3. Refactored Solution
class Die

	attr_reader :sides #Using attr_reader which does the same thing as sides did on the method above.

  def initialize(sides)
    # code goes here
    unless(sides > 0)
    	raise ArgumentError.new("Die must have more than 0 sides.")
    end
    @sides = sides
  end

  def roll
    # code goes here
    rand(1..sides)
  end
end

# 4. Reflection
=begin
What is an ArgumentError and why would you use one?
	
	An ArguementError gets raised when there is something wrong with the arguments a method is recieving. It can
	be something like the wrong number of arguments or an inappropriet argument. In my case, I raised the 
	ArgumentError because the user did not use a value that I was expecting. An argumentError is a good way
	to add checks for the arguemnts a method is supposed to recieve.

What new Ruby methods did you implement? What challenges and successes did you have in implementing them?

	I used the attr_reader method, this method was new. Essentially what it does is just return an instance
	variable of the object. I did not have any trouble implementing this method, I got it done successfully
	the first time I tried it. 

What is a Ruby class?

	A Ruby class essentially holds variables and methods that are available for an instance of that class. The
	instance of a class is called an object. The object will hold all the methods of that class as well as instance
	variables for that object. This is very powerful because a class can have many instances and each instance 
	can hold its own information. Everything in Ruby belongs to a class, which is why we can call all those Ruby
	methods that are already built into those classes. 

Why would you use a Ruby class?

	I would use a Ruby class to save a lot of typing. A Ruby class allows for a developer to design packages 
	of objects that can be used and reused. Every time a new instance of a class is created, it is treated as
	its own entity, it holds data that only belongs to itself, along with all the functions that can be used
	on that data. For example, if you have an User class with variable @name and @email, you can then have 
	a lot of instances of users that all have a different name and email. This just opens the doors to almost
	infinite possibilites when it comes to designing systems.

What is the difference between a local variable and an instance variable?
	
	A local variable is only available for use in the scope that it is declared. An instance variable will
	always remain as long as the object exits. You can not operate on a local variable outside of a class,
	however with an instance variable, you can user it as something that is unique to that variable. Both
	have their uses as you may not always want to allow access to all variable in your program, in which case
	local variables are great. On the other hand, you can have instance variables that will be available for
	your object at all times.

Where can an instance variable be used?

	Instance variables can be used for attributes that are unique to an instance of a class. That object will
	hold that instance variable for the its entire life cycle. You can also have accessors call upon those
	instance variables to read or write to them via attr_accessor. 

=end