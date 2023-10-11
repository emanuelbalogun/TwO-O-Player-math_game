require_relative 'player'
class Game
  attr_accessor :player1 , :player2, :new_game_is_started
def initialize
  puts "player1 please input your name"
  player1_name = gets.chomp
  @player1 = Player.new(player1_name,true)
  puts "playe2 please input your name"
  player2_name = gets.chomp
  @player2 = Player.new(player2_name,false)
  @new_game_is_started = 1
end

def gameover
   (player1.lives == 0) || (player2.lives == 0)
end

def winner
  if(player2.lives == 0) ? player1 : player2;
end

def changeplayer
 player1.player_turn = !player1.player_turn;
 player2.player_turn = !player2.player_turn;
end
  

def play_game
  while !gameover
    if new_game_is_tarted == 1
      self.new_game_started = 0 
    else
      puts "----------  NEW TURN  ----------"
    end
end

end
