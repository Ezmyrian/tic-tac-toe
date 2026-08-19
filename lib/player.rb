class Player
  protected

  attr_accessor :mark

  def initialize(player_number)
    @name = name(player_number)
  end

  def name(player_number)
    puts "What is the name of player #{player_number}?"
    gets.chomp
  end

  public

  def player_1_mark
    mark = ''
    until (mark == 'X') || (mark == 'O')
      puts 'Will player 1 be X or O?'
      mark = gets.chomp.upcase
    end
    @mark = mark
  end

  def player_2_mark(player_1, player_2)
    player_2.mark = if player_1.mark == 'X'
                      'O'
                    else
                      'X'
                    end
  end
end
