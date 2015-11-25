# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = ['B', 'I', 'N', 'G', 'O'].sample
    number = rand(1..100).to_s
    return [letter, number]
  end

  def check(call)
    if call[0] == 'B'
      @bingo_board.each do |row|
        if row[0] == call[1]
          row[0] = 'X'
        end
      end
    elsif call[0] == 'I'
      @bingo_board.each do |row|
        if row[1] == call[1]
          row[1] = 'X'
        end
      end
    elsif call[0] == 'N'
      @bingo_board.each do |row|
        if row[2] == call[1]
          row[2] = 'X'
        end
      end
    elsif call[0] == 'G'
      @bingo_board.each do |row|
        if row[3] == call[1]
          row[3] = 'X'
        end
      end
    elsif call[0] == 'O'
      @bingo_board.each do |row|
        if row[4] == call[1]
          row[4] = 'X'
        end
      end
    end
  end

  def print_board
    @bingo_board.each do |row|
      row.each do |number|
        print number.to_s.center(5)
      end
      puts
    end
  end
end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]

new_game = BingoBoard.new(board)
new_game.check(['B', 47])
new_game.print_board

#Reflection