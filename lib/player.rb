# Creates a player with name to be used in game
class Player
  attr_reader :name

  def initialize(name)
    @name = name
  end
end
