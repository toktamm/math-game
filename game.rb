
class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @players = []
    @turn = 1
    @current_player = ""

  end


  def setup
    @player_1.get_name
    @player_2.get_name
    puts "Alright, #{@player_1.name} and #{@player_2.name}! Let's do some math!!"
    @players << @player_1
    @players << @player_2
    @current_player = @players.rotate!(rand(2)).first
    p @current_player.name
  end


  def new_turn
    @current_player = @players.rotate!.first
    puts "----- TURN #{@turn} -----"

  end


  def score
    puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
  end


  def game_over
    @current_player = @players.last
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "----- GAME OVER -----"
    puts "Good bye!"
  end



  def play
    setup


    until @player_1.is_dead? || @player_2.is_dead?
      new_turn
      p @current_player.name
      @current_player.lose_life
      score
    end

    game_over



  end


end



# player.lose_life is the method to lose one life
# player.is_dead? check if the player is without lives 
