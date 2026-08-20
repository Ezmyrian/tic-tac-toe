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
      location = gets.chomp.upcase
    end
    update_board(location, player.mark)
  end

  def win?
    winning_combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6],
                            [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
    flat_board_array = board.flatten
    winning_combinations.any? do |array|
      board_values = array.map { |index| flat_board_array[index] }
      board_values.uniq.length == 1
    end
  end

  def tie?
    flat_board_array = board.flatten
    flat_board_array.all? { |value| %w[X O].include?(value) } && !win?
  end

  def win_or_tie?
    win? || tie?
  end

  protected

  def update_board(location, mark)
    index = board.flatten.index(location)
    board[index / 3][index % 3] = mark
  end
end
