class Player
  def initialize(player_number)
    @name = name(player_number)
  end

  def name(player_number)
    puts "What is the name of player #{player_number}?"
    gets.chomp
  end

  def mark
    mark = ''
    until (mark == 'X') || (mark == 'O')
      puts 'Will player 1 be X or O?'
      mark = gets.chomp.upcase
    end
    @mark = mark
  end
end
