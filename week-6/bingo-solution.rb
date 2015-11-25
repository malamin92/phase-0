# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
  #create a method 'call'
  # set variable to pick a random number out of array consisting of letter B I N G O
  # set variable to pick a random number between 1 and 100
  # return the letter and number in an array

# Check the called column for the number called.
  #fill in the outline here
  # check each row of the board array
  #   IF the letter is 'B', check the first element of that row
  #   ELSIF the letter is 'I', check the second element of that row
  #   ELSIF the letter is 'N', check the third element of that row
  #   ELSIF the letter is 'G', check the fourth element of that row
  #   ELSIF the letter is 'O', check the fifth element of that row

# If the number is in the column, replace with an 'x'
  #fill in the outline here
  # IF the number value form the call method if equal to the element in that column
  #   the element at that column becomes 'X'

# Display a column to the console
  #fill in the outline here
  # print each element fron within the game board array if the index of the subarrary is the column

# Display the board to the console (prettily)
  #fill in the outline here
  # go through each array of the the game board
  # print each elemment of the subarray followed by a space
  # skip a line at the end of each array

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     letter = ['B', 'I', 'N', 'G', 'O'].sample
#     number = rand(1..100)
#     return [letter, number]
#   end

#   def check(call)
#     if call[0] == 'B'
#       @bingo_board.each do |row|
#         if row[0] == call[1]
#           row[0] = 'X'
#         end
#       end
#     elsif call[0] == 'I'
#       @bingo_board.each do |row|
#         if row[1] == call[1]
#           row[1] = 'X'
#         end
#       end
#     elsif call[0] == 'N'
#       @bingo_board.each do |row|
#         if row[2] == call[1]
#           row[2] = 'X'
#         end
#       end
#     elsif call[0] == 'G'
#       @bingo_board.each do |row|
#         if row[3] == call[1]
#           row[3] = 'X'
#         end
#       end
#     elsif call[0] == 'O'
#       @bingo_board.each do |row|
#         if row[4] == call[1]
#           row[4] = 'X'
#         end
#       end
#     end
#   end

#   def print_board
#     @bingo_board.each do |row|
#       row.each.with_index do |number, index|
#         print "#{number} | "
#       end
#       puts
#       puts "------------------------"
#     end
#   end
# end

# Refactored Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = ['B', 'I', 'N', 'G', 'O'].sample
    number = rand(1..100)
    return [letter, number]
  end

  def check(call)
    if call[0] == 'B'
      @bingo_board.each do |row|
        row[0] == call[1] ? row[0] = 'X' : row[0] #Use ternary operator here, same as if/else
      end
    elsif call[0] == 'I'
      @bingo_board.each do |row|
        row[1] == call[1] ? row[1] = 'X' : row[0]
      end
    elsif call[0] == 'N'
      @bingo_board.each do |row|
        row[2] == call[1] ? row[2] = 'X' : row[0]
      end
    elsif call[0] == 'G'
      @bingo_board.each do |row|
        row[3] == call[1] ? row[3] = 'X' : row[0]
      end
    elsif call[0] == 'O'
      @bingo_board.each do |row|
        row[4] == call[1] ? row[4] = 'X' : row[0]
      end
    end
  end

  def print_board #refacotred for... much neater
    ['B', 'I', 'N', 'G', 'O'].each {|letter| print letter.center(5)}
    puts
    puts "-------------------------"

    @bingo_board.each do |row|
      row.each do |number|
        print number.to_s.center(5) #centers everything to within 5 spaces
      end
      puts
      puts "-------------------------"
    end
  end

  def legal_board #bounus
    @bingo_board.each do |row|
      row.collect!.with_index do |number, index| 
        if index == 0
          number = rand(1..15)
        elsif index == 1
          number = rand(16..30)
        elsif index == 2
          number = rand(31..45)
        elsif index == 3
          number = rand(46..60)
        elsif index == 4
          number = rand(61..75)
        end
      end
    end
    @bingo_board[2][2] = "X" #special case of the middle spot
  end

end


#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check(['B', 47])
new_game.check(['N', 97])
new_game.print_board
=begin
Sample output:

  B    I    N    G    O  
-------------------------
  X   44   71    8   88  
-------------------------
 22   69   75   65   73  
-------------------------
 83   85    X   89   57  
-------------------------
 25   31   96   68   51  
-------------------------
 75   70   54   80   83  
-------------------------

=end
puts
new_game.legal_board
new_game.print_board
=begin
Sample output:
  B    I    N    G    O  
-------------------------
  6   18   43   56   72  
-------------------------
  7   24   33   51   70  
-------------------------
 12   23    X   51   66  
-------------------------
  6   17   37   56   74  
-------------------------
 14   24   37   58   65  
-------------------------

=end


#Reflection
=begin 
How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?

  I thought it was fine pseudocoding. The same concepts apply, break things down into little steps
  and progress accordingly. Now you can also take into account that you are working with a class so you
  can refer to instance variables and such. I think my pseudocoding style is okay. I'm not very specific
  with my pseudocode on purpose so I can stil be imaginiative when coding. For me it's almost impossible
  to think of a complete solution while pseudocoding because I feel like I will run into some complications
  when I'm coding. 

What are the benefits of using a class for this challenge?

  The number one benefit is that you can save the state of the board and have many different instances of it.
  That means you can have multiple games going and each one will have it's own unique board. This is a huge
  benefit of having instance vairables because you can have maby objects with unique values in them.

How can you access coordinates in a nested array?

  In a nested array, you just have to remember what depth of the array you are in. If you are trying to reach
  an inner array, then you have make sure you are in that depth when refering to the array. Keep going levels
  until you are at the appropriet level to access an element that you want. So you user array[0][0] to reach
  the first element of the first nested array, and so on respectively.


What methods did you use to access and modify the array?

  I used the #each method and the #collect method for my array traversals. To modify elements when using the
  @each method I set the variables explictly using array[index] = something. When using the collect method, I
  used the destructive version with a ! because I was modifying the original array of game board. When traversing
  different dimensions of arrays, I just nested a each loop within another each loop to access the arrays in the array.

Give an example of a new method you learned while reviewing the Ruby docs. 
Based on what you see in the docs, what purpose does it serve, and how is it called?

  I used a couple of new methods/techniques in this exercise. For one, I used the #center method on strings
  to print a neat looking spaced out board. This method center the value in it within a space defined by the
  argument it takes. So if I did something like #center(5), it will allign the value center of 5 spaces. I also
  used the ternary operator to get rid of simple if statments because it serves a similar function. Check the
  statement, if true then do what left of the : and if false, to what on the right of the :. Those are the new
  things I learned.

How did you determine what should be an instance variable versus a local variable?
  
  I didn't make any instance variables even though I could have. The only instance variable I used was the
  gameboard because it is something that needs to be preserved. For the call method I returned an array, that
  way when calling the check method, the user had the option of passing in the values manually or using the
  call method to get random values. I thought this made my program more flexible and modular, even though 
  the check method now is dependent on the call method, it has to be.

What do you feel is most improved in your refactored solution?

  I just made my code a lot more DRY. I used the same logic in my refacoted solution because I couldn't think
  of a better way to do it even after I checked the ruby docs. I also liked the way my board was printed
  way more in my refactored solution. I also like that I got a chance to use the ternary operator

=end
