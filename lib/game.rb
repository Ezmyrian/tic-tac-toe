class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def play_game
    players = players_setup
  end

  def players_setup
    player_1 = Player.new(1)
    player_2 = Player.new(2)
    player_1.player_1_mark
    player_2.player_2_mark(player_1, player_2)
    [player_1, player_2]
  end
end
