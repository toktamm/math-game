class Question
  
  def generate_question
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    "What does #{@num1} plus #{@num2} equal?"
  end

  def is_right?(answer)
    answer == @num1 + @num2
  end


end

