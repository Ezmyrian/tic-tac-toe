class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def play_game
    players = players()
    p players
  end

  def players
    player_1 = Player.new(1)
    player_2 = Player.new(2)
    [player_1, player_2]
  end
end
