# Creates a player with name to be used in game
class Player
  attr_reader :name
  attr_accessor :mark

  def initialize(name)
    @name = name
  end
end
