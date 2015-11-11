# Analyze the Errors

# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase
cartmen_phrase = "Screw you guys " + "I'm going home."

# This error was analyzed in the README file.
# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?

#    errors.rb

# 2. What is the line number where the error occurs?

#    171

# 3. What is the type of error message?

#    syntax error,

# 4. What additional information does the interpreter provide about this type of error?

#    unexpected end-of-input, expecting keyword_end

# 5. Where is the error in the code?

#    The error comes after the quotation marks.

# 6. Why did the interpreter give you this error?

#    The user forgot to put an end to the while conditional. In ruby, you have to end your while
#    with and 'end'key word.

# --- error -------------------------------------------------------

south_park = "Best show ever!"

# 1. What is the line number where the error occurs?

#    49

# 2. What is the type of error message?

#    NameError

# 3. What additional information does the interpreter provide about this type of error?

#    undefined local variable or method

# 4. Where is the error in the code?

#    `south_park' for main:Object 

# 5. Why did the interpreter give you this error?

#    'south_park' is a stray statement that is nether defined as a variable nor method.
#    In Ruby all statements must have a purpose of some kind and cannot be left undefined.

# --- error -------------------------------------------------------

def cartman
	return "Cartman is the one of the best character in cartoon television!"
end

cartman()

# 1. What is the line number where the error occurs?

#    74

# 2. What is the type of error message?

#    NoMethodError

# 3. What additional information does the interpreter provide about this type of error?

#    undefined method `cartman'

# 4. Where is the error in the code?

#    cartman' for main:Object

# 5. Why did the interpreter give you this error?

#    In Ruby, you must declare a function before you use it. In this case, the user is calling 
#    the function 'cartman()' that was never defined.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?

#    103

# 2. What is the type of error message?

#    ArgumentError

# 3. What additional information does the interpreter provide about this type of error?

#    wrong number of arguments (1 for 0)

# 4. Where is the error in the code?

#    from week-4/errors.rb:107:in `<main>'

# 5. Why did the interpreter give you this error?

#    The method 'cartmans_phrase' expects no arguments, in Ruby you must call the method
#    with the correct nubmer of arguments.

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says("*****")

# 1. What is the line number where the error occurs?

#    136

# 2. What is the type of error message?

#    ArgumentError

# 3. What additional information does the interpreter provide about this type of error?

#    wrong number of arguments

# 4. Where is the error in the code?

#    wrong number of arguments (0 for 1)

# 5. Why did the interpreter give you this error?

#    When calling the function 'cartman_says', the user did not provide an argumetn as expected by Ruby.



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', "Kyle!")

# 1. What is the line number where the error occurs?

#    166

# 2. What is the type of error message?

#    ArgumentError

# 3. What additional information does the interpreter provide about this type of error?

#    wrong number of arguments (1 for 2)

# 4. Where is the error in the code?

#    errors.rb:162:in `cartmans_lie'

# 5. Why did the interpreter give you this error?

#    When calling the method 'cartman_lies', the user only provided 1 argument of the expected 2.

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?

#    190

# 2. What is the type of error message?

#    TypeError

# 3. What additional information does the interpreter provide about this type of error?

#    String can't be coerced into Fixnum 

# 4. Where is the error in the code?

#    errors.rb:190:in `*'

# 5. Why did the interpreter give you this error?

#    In ruby, you cannot multiply a number by a string, it must be a string multiplied by a number.

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0.1


# 1. What is the line number where the error occurs?

#    214

# 2. What is the type of error message?

#    ZeroDivisionError)

# 3. What additional information does the interpreter provide about this type of error?

#    divided by 0 

# 4. Where is the error in the code?

#   errors.rb:214:in `/'

# 5. Why did the interpreter give you this error?

#    In Ruby, just like in math, you cannot divide a number by 0.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?

#    239

# 2. What is the type of error message?

#    LoadError

# 3. What additional information does the interpreter provide about this type of error?

#    cannot load such file -- /Users/malamin/Desktop/DBC/phase-0/week-4/cartmans_essay.md

# 4. Where is the error in the code?

#    errors.rb:239:in `require_relative'

# 5. Why did the interpreter give you this error?

#    In Ruby, you cannot load a file that does not exist. The refered file does not exit in the path.


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

=begin

Which error was the most difficult to read?
	
	None of the errors were hard to read. The example shown in the exercise uses a different format than
	the errors my interpreter shows. I had to think about how my errors are shown, but once I figured that
	out, the errors were simple and straight forward to read. The type is shown as well as what line number
	each error is happening on, making debugging not too difficult.

How did you figure out what the issue with the error was?

	I just looked at the type of error and read the additional information. Once looking at the code and the
	error description, the error was rather obvious to fix. The line number does not always indicate that the
	error is happening on that line, you have to look at the additional information to see where the error happened
	in the logic of the code.

Were you able to determine why each error message happened based on the code? 

	Yes, the error is described pretty thoroughly by the interpreter. The type is shown as well as exactly where
	the error is happening. With this imformation, it is not difficult to break down the error and fix it. You can
	just look up the error type as well if you wanted to get help on google.

When you encounter errors in your future code, what process will you follow to help you debug?

	I will look at the error type, then look at the line number and the code. I will read the loger description to
	find out the specifics of the error. If I get really stuck, I can always try to google and use stack overflow
	as a resource. For the most part, the errors shown in thie exercise seem pretty standard and I can see them happening
	frequently in the process of learning Ruby.

=end
