class Game
  attr_reader :game_board

  def initialize
    @game_board = Board.new
  end
end
