class GamesController < ApplicationController
  def name_game
    @name = params["user_name"].upcase
    @first_letter = @name.chr
    if @first_letter == "A" or @first_letter == "a"
      @message = "Hey, your name starts with the first letter of the alphabet!"
    end
  end

  def guess
    winning_number = 42
    @guess = params["guess"].to_i

      if @guess > winning_number
        @message = 'too low'
      elsif @guess < winning_number
        @message = 'too high'
      else
        @message = 'you guessed correctly!'
      end
  end

  # case @guess <=> winning_number
  #   when 0
  #     @message = "right"
  #   when 1
  #     @message = "too high"
  #   when -1
  #     @message = "too low"
  # end
# this works the same is the elsif above

  def segment_params
    @value = params["this_is_a_variable"]
  end

  def guess_segment
    @winner = 55
    @guess_segment= params["guess_segment"].to_i
      if @guess_segment < winner
        @message = 'too low'
      elsif @guess_segment > winner
        @message = 'too high'
      else
        @message = 'you guessed correctly!'
      end
  end

  def get_form

  end

  def use_form
    @value = params["form_message"]
  end

  def form_guess_result
    @winner = 55
    @form_guess_result= params["form_guess_result"].to_i
    if @form_guess_result < @winner
    @message = 'too low'
  elsif @form_guess_result > @winner
    @message = 'too high'
  else
    @message = 'you guessed correctly!'
  end
  end



end
