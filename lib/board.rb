class Board
  attr_reader :board

  def initialize
    @board = [%w[A1 A2 A3], %w[B1 B2 B3], %w[C1 C2 C3]]
  end

  def display_board_state
    puts @board[0].join('|')
    puts '--------'
    puts @board[1].join('|')
    puts '--------'
    puts @board[2].join('|')
  end
end
