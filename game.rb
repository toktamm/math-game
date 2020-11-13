
class Game
  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @players = [@player_1, @player_2]
    @turn = 0
    @current_player = ""

  end


  def setup
    @player_1.get_name
    @player_2.get_name
    puts "Alright, #{@player_1.name} and #{@player_2.name}! Let's do some math!!"
    @current_player = @players.rotate!(rand(2)).first
  end


  def new_turn
    @turn += 1
    @current_player = @players.rotate!.first
    puts "--------------- TURN #{@turn} ---------------"
    @current_question = Question.new
  end


  def ask_question
    puts "#{@current_player.name}: #{@current_question.generate_question}"
    print "> "
  end


  def handle_answer
    answer = gets.chomp.to_i
    if @current_question.is_right?(answer)
      puts "YES, #{@current_player.name}!! You are correct!!"
    else
      puts "Seriously, #{@current_player.name}?? No!!"
      @current_player.lose_life
    end
  end
  

  def score
    puts "#{@player_1.name}: #{@player_1.lives}/3 vs #{@player_2.name}: #{@player_2.lives}/3"
  end


  def game_over
    @current_player = @players.last
    puts "------------- GAME OVER --------------"
    puts "#{@current_player.name} wins with a score of #{@current_player.lives}/3"
    puts "Good bye!"
  end



  def play
    setup
    until @player_1.is_dead? || @player_2.is_dead?
      new_turn
      ask_question
      handle_answer
      score
    end

    game_over
  end


end

