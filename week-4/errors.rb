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

cartmans_phrase('I hate Kyle')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!')

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

5 * "Respect my authoritay!"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/0


# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#

# --- error -------------------------------------------------------

require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
#
# 2. What is the type of error message?
#
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
#
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.