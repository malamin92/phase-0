#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode

# Input:
# Output:
# Steps:

class NameData
	attr_reader :name

	def initialize(name)
		@name = name
	end
end


class Greetings
	def initialize
		@persons_name = NameData.new("Mohammad Amin")
	end

	def hello
		puts "Hello there #{@persons_name.name}! How wonderful to see you today!"
	end

end

greet = Greetings.new
greet.hello


# Reflection
=begin
Release 1: Read and Research
What are these methods doing?

	These methods are setting and getting hthe instance variables of the class. The getter methods are just returning the
	instance of each variable while the getter methods are changing the values of the instance variables. After the instance
	variables are initially printed, the setter and getter methods are changing each variable and reprinting them with 
	the changed variables.

How are they modifying or returning the value of instance variables?

	When the getter methods are called, the instance variables are just being returned. When the getter method is called,
	the variables is assigned using the = operator, and that modifies the instance variable instead of passing a variable
	the old fashioned way.

Release 2: Identify the Changes	
What changed between the last release and this release?

	In this release, the age getter method is now replaced with attr_reader :age. This does the same thing as what_is_age
	did before, it is a built in Ruby feature because that method is so common in Ruby.

What was replaced?

	The what_is_age method was replaced with with attr_accessor :age, which does the same thing.

Is this code simpler than the last?
	
	Yes, this code was much more DRY and cleaner because a whole method was able to to be skipped.

Release 3: More Changes
What changed between the last release and this release?

	In this release the way that age was set changed. In the previous release, the change_my_age method was used to set
	the age while in thie release, .age= was used. This is because now the attr_writer is used.

What was replaced?

	The method change_my_age was replaced with attr_write :age. This new accessor does the same thing as what change_my_age
	did in the previous release.
	

Is this code simpler than the last?
	
	Yes, this code was once again more DRY and cleaner. It was also more readable as reader and writer are more
	descriptive of what's happening in the code.


Release 6: Reflect
What is a reader method?

	The reader method allows you to return an instance variable. This method can be called outside the class at any moment 
	allowing you to see the state of an instance variable.

What is a writer method?

	A write method allows you to set an instance variable. The writer method allows you to modify an already existing 
	instance variable outside of a class. 

What do the attr methods do for you?

	It makes it very easy for you to set and get instance variables. This helps when trying to access certain variables that
	can be passed to other classes or methods.

Should you always use an accessor to cover your bases? Why or why not?

	No. Always using an accessor leaves security holes in your program, because it allows anyone access to your instance 
	variables. This is not good if you are trying to keep your data secure. In situations where you need to just read data
	use reader and use writer you need to change a variable, avoid using accessor when possible.

What is confusing to you about these methods?

	There is nothing confusing about these methods. I was unlear as to how the = at the definition of a method impacts
	the method but now after doing this I see that all it does is let one user  = to set a argument rather then do it
	the old fashioned way. 

=end