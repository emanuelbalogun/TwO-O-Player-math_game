class Game
  attr_accessor :player1 , :player2, :new_game_started
def initialize
  puts "playe1 please input your name"
  player1_name = gets.chomp
  @player1 = Player.new(player1_name,true)
  puts "playe2 please input your name"
  player2_name = gets.chomp
  @player2 = Player.new(player2_name,false)
  @new_game_started = 1
end

def gameover
   (player1.lives == 0) || (player2.lives == 0)
end



end
