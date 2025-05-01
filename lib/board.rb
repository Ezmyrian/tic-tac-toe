# Creates board for tic tac toe
class Board
  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new(3) }
  end
end
