class Player
  attr_accessor :lives, :player_turn
  attr_reader :name
  def initialize(name,player_turn)
    @name = name
    @player_turn = player_turn
    @lives = 3
  end

end