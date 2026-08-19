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

  def valid_location?(location)
    %w[X O].none? { |value| value == location } &&
      @board.flatten.include?(location)
  end

  def player_move(player)
    location = ''
    until valid_location?(location)
      puts "Where will #{player.name} go?"
      location = gets.chomp
    end
    update_board(location, player.mark)
  end

  protected

  def update_board(location, mark)
    index = board.flatten.index(location)
    board[index / 3][index % 3] = mark
  end
end
