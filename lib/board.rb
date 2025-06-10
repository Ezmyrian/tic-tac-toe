# Creates board for tic tac toe
class Board < Array
  attr_reader :board

  def initialize
    super
    @board = %w[A1 A2 A3 B1 B2 B3 C1 C2 C3]
  end

  def display(board)
    puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
    puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
    puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
  end
end

# puts "#{@board[0]} | #{@board[1]} | #{@board[2]}"
# puts "#{@board[3]} | #{@board[4]} | #{@board[5]}"
# puts "#{@board[6]} | #{@board[7]} | #{@board[8]}"
