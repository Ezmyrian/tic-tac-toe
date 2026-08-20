class Game
  attr_reader :board

  def initialize
    @board = Board.new
  end

  def play_game
    players = players_setup
    board.display_board_state
    last_player = game_loop(players)
    if board.tie?
      puts 'Tie game'
    else
      puts "#{last_player.name} wins!"
    end
  end

  def game_loop(players)
    current_player = players[0]
    end_condition = false
    until end_condition
      play_turn(current_player)
      end_condition = board.win_or_tie?
      unless end_condition
        current_player = switch_player(players, current_player)
      end
    end
    current_player
  end

  def switch_player(players, current_player)
    if current_player == players[0]
      players[1]
    else
      players[0]
    end
  end

  def players_setup
    player_1 = Player.new(1)
    player_2 = Player.new(2)
    player_1.player_1_mark
    player_2.player_2_mark(player_1, player_2)
    [player_1, player_2]
  end

  def play_turn(current_player)
    board.player_move(current_player)
    board.display_board_state
  end
end
