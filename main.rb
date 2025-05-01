require_relative "lib/player"
require_relative "lib/board"

puts "What is player one's name?"
player_one = gets.chomp
player_one = Player.new(player_one)

puts "What is player two's name?"
player_two = gets.chomp
player_two = Player.new(player_two)

puts player_one.name
puts player_two.name
