require_relative "lib/player"
require_relative "lib/board"

puts "What is player one's name?"
player_one = gets.chomp
player_one = Player.new(player_one)

puts "What is player two's name?"
player_two = gets.chomp
Player.new(player_two)

puts "Is player one X or O?"
player_one.mark = gets.chomp.upcase

until %w[X O].include?(player_one.mark)
  puts "Is player one X or O?"
  player_one.mark = gets.chomp.upcase
end

board = Board.new
board.display(board)
