class Board
  attr_reader :board

  def initialize
    @board = Array.new(3) { Array.new(3, '-') }
  end

  def state
    @board
  end
end
