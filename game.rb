require_relative 'Player'
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

  def current_player
    player1.player_turn ? player1 : player2
  end

  def winner
    if(player2.lives == 0) 
      return player1 
    else
      return player2; 
    end
  end

  def changeplayer
    player1.player_turn = !player1.player_turn;
    player2.player_turn = !player2.player_turn;
  end
    

  def play_game
    while !gameover
      if new_game_is_started == 1
        self.new_game_is_started = 0 
      else
        puts "----------  NEW TURN  ----------"
      end

      number1 = rand(1..20)
      number2 = rand(1..20)


      puts " #{current_player.name}: What does #{number1} plus #{number2} equal"
      answer = gets.chomp.to_i

      if number1 + number2 == answer 
        puts "#{current_player.name}: YES! you are correct."
        else
        puts "#{current_player.name}: Seriously? NO!"
        current_player.lives -=1
      end
      changeplayer       
      puts "#{player1.name}: #{player1.lives}/3 vs #{player2.name}: #{player2.lives}/3"
    end
    puts " #{winner.name} wins with ascore of #{winner.lives}/3"
    puts "---------- GAME OVER ----------"
    puts "Good bye!"
  
  end

end