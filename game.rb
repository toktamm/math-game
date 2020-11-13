require './player'


class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @players = []

  end

  def setup
    @player_1.get_name
    @player_2.get_name
    puts "Alright, #{@player_1.name} and #{@player_2.name}! Let's do some math!!"
  end

  def play
    setup


  end


end
