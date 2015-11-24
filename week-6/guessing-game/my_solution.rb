# Build a simple guessing game


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode

# Input: Initialize the class with an integer.
# Output: :high, :low or :correct symbol.
# Steps: 
=begin
1. Initialize the method with answer
2. Store answer in an instance variable so it's state can be saved.

3. Define a method guess
	Input: Interger
	Output :high, :low or :correct
	Steps:
		Sets players guess as in instance variable to preserve it's state

		IF input > answer, return :high 
			-> Set players guess to :high
		ELSIF input < answer, return :low
			-> set players guess to :low
		ELSE return :correct
			-> set players guess to :correct
		END

4. Define a method slved?
	Input: None.
	Output: Boolean
	Steps.
		return false if players answer instance variable is not :correct
		return true if players answer instance variable is :correct

	
=end


# Initial Solution

# class GuessingGame

#   def initialize(answer)
#     # Your initialization code goes here
#     @answer = answer
#   end

#   # Make sure you define the other required methods, too
#   def guess(players_guess)
#   	if players_guess < @answer
#   		@players_guess = :low
#   	elsif players_guess > @answer
#   		@players_guess = :high
#   	else 
#   		@players_guess = :correct
#   	end

#   end

#   def solved?
#   	return false if @players_guess != :correct
#   	return true if @players_guess == :correct
  	
#   end

# end

# Refactored Solution

class GuessingGame
  def initialize(answer)
    # Your initialization code goes here
    @answer = answer
  end

  # Make sure you define the other required methods, too
  def guess(players_guess)
  	if players_guess < @answer
  		@players_guess = :low
  	elsif players_guess > @answer
  		@players_guess = :high
  	else 
  		@players_guess = :correct
  	end

  end

  def solved?
	  @players_guess == :correct ? true : false #use ternary opeator to make dry code.
  end
end

# #Function to play the game
# def play
# 	game = GuessingGame.new(rand(1..100))#declare instance of GuessingGame

# 	players_input = nil
# 	while players_input != 0
# 		puts "Guess a number from 1 to 100, or enter 0 to exit."
# 		players_input = gets.chomp.to_i
# 		game.guess(players_input)
# 		if game.solved?
# 			puts "You guessed correctly! YOU WIN!!!"
# 			break
# 		else
# 			puts "You answer was #{game.guess(players_input)}, try again." unless players_input == 0 
# 		end
# 	end
# 	puts "Goodbye!"
# end

# play

# Reflection

=begin
How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
	
	A bicycle is made of a frame and wheels. The speed of the bike depends on the diameter of the wheel and size of
	the frame. There are many kinds of bicycles with many different wheel sizes and frames. The speed of different 
	bikes are different depending on the diameter of the wheel and frame. This is how variables and methods represent 
	real life objects and behavior. The frame and wheels are like the variables while the speed of the bike is method 
	thats dependent on the wheel and frame. The unique frame and wheels can be used to calculate the speed, and each 
	instance of a bicycle will have different speeds.

When should you use instance variables? What do they do for you?
	
	Instance variables preserve their state and are unique to the instance of a class. This allows you to create
	objects and use methods to alter the state of instance variables, making it very easy to create unique objects
	with their own unique behavior, a very powerful feature that develpers can use. 

Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?

	You can use flow control to send your program in different directions depending on what you prefer. It allows you
	to make choices depending on certain conditions. In this challenge, I used flow control to set the state of the 
	players current guess, depending on what the user inputs. I also used it to create a method in which players can
	play a game. 

Why do you think this code requires you to return symbols? What are the benefits of using symbols?

	Symbols are effecient to use because they are unique unlike strings. Symbols cannot have more than one spot
	in memory, making access to them very quickly. When a symbol is returned in a puts statement, it is converted to
	a string which  makes it very convinient to implement as you don't have to worry about conversion explicitly. 
	This code requires you to use symbols for those reasons. 

=end
