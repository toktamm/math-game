
class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @players = []
    @turn = 1

  end

  def setup
    @player_1.get_name
    @player_2.get_name
    puts "Alright, #{@player_1.name} and #{@player_2.name}! Let's do some math!!"
  end




  def new_turn
    puts "----- TURN #{@turn} -----"

  end

  def score
    puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
  end

  def game_over
    puts " wins with a score of 1/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end






  def play
    setup




    until @player_1.is_dead? || @player_2.is_dead?
      new_turn
      @player_1.lose_life
      score
    end

    game_over




  end


end



# player.lose_life is the method to lose one life
# player.is_dead? check if the player is without lives 
