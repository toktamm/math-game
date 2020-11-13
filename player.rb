class Player
  attr_reader :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def lose_life
    @lives -= 1
  end

  def get_name
    print "Please inform the name of #{@name}: "
    new_name = gets.chomp
    @name = new_name != "" ? new_name : @name
  end

end
