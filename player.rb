class Player
  attr_reader :name, :lives
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end


  def is_dead?
    @lives == 0
  end



  def get_name
    print "Please inform the name of #{@name}: "
    new_name = gets.chomp
    @name = new_name != "" ? new_name : @name
  end

end
