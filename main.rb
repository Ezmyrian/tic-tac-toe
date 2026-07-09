# frozen_string_literal: true

require_relative 'lib/board'
require_relative 'lib/player'
require_relative 'lib/game'

def get_name(number)
  puts "What is the name of player #{number}?"
  gets.chomp
end

def players
  player_1 = Player.new(get_name(1))
  player_2 = Player.new(get_name(2))
  [player_1, player_2]
end

def game
  game = Game.new
  puts game.game_board.board
end

game
