# First Pine Challenge:

puts "Hello there, what is your first name?"
first_name = gets.chomp
puts "What is your middle name?"
middle_name = gets.chomp
puts "What is your last name?"
last_name = gets.chomp

# puts "Hi " + first_name + " " + middle_name + " " + last_name + "! Nice to meet you!"

# Second Pine Challenge:

puts "What is your favorite number?"
favorite_number = gets.chomp
puts "Have you considered #{favorite_number.to_i + 1} and your favorite number? It's bigger and better!"

=begin

How do you define a local variable?

	Local variables exist only in the scope of the current program. You can use them when you are storing a
	variable in a program that you are writing. The variable will be saved for the lifetime of that program,
	unless it is changed. For example you can store num1 = 5, so now you can refer to num1 for the rest
	of the program without having to write 5 all the time. It's useful when you are trying to keep your
	code DRY and saves you a lot of typing when refering to the same object over and over again.

How do you define a method?

	You define a method by using the 'def' keyword, followed by the name of the method. You have to make sure 
	you close the method by using the 'end' key word. Any code that is between the lines is the code that belongs
	in the method itself. Any variables that you define in the mehtod can only be accessed in the methods
	scope and not outside it, it is local to the method itself. 

What is the difference between a local variable and a method?
	
	A local variable only holds values, it does not hold logic. A mthod on the other hand can have several parts
	to it and has its own local variables. A local variable in the method cannot be accessed outside it, nor does
	the method have access to the variables decalred outside of it. A method can have multiple elements such as flow
	control and loops, but a local variable can only hold a value.

How do you run a ruby program from the command line?
	
	You run a method from the command line using the 'ruby' command followed by the name of a ruby file. You can
	also run IRB, which is a direct interpretation of the code you are typing and is great way to experiment when
	trying to figure out what a certain method does. 

How do you run an RSpec file from the command line?

	You run RSpec by using the 'rspec' command followed by the name of a spec file. It's important to remember to 
	refernce the file being tested in the rspec file itself or RSpec will not know which ruby file to test.

What was confusing about this material? What made sense?

	There was nothing confusing about this material, all of it made sense.

=end