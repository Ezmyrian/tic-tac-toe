class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def play_game
    players = players_setup
    board.display_board_state
    play_round(players)
  end

  def players_setup
    player_1 = Player.new(1)
    player_2 = Player.new(2)
    player_1.player_1_mark
    player_2.player_2_mark(player_1, player_2)
    [player_1, player_2]
  end

  def play_round(players)
    board.player_move(players[0])
    board.display_board_state
    board.player_move(players[1])
    board.display_board_state
  end
end
