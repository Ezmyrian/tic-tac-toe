class Player
  def initialize(player_number)
    @name = name(player_number)
  end

  def name(player_number)
    puts "What is the name of player #{player_number}?"
    gets.chomp
  end

  def mark
    player = ''
    until (player == 'X') || (player == 'O')
      puts 'Will player 1 be X or O?'
      player = gets.chomp.upcase
    end
    player
  end
end
