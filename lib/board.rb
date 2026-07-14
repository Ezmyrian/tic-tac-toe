class Board
  attr_reader :board

  def initialize
    @board = [%w[A1 A2 A3], %w[B1 B2 B3], %w[C1 C2 C3]]
  end

  def state
    @board
  end
end
