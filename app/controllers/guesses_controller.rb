class GuessesController < ApplicationController


  def index
    @first_number = params["first_number"].to_i
    @second_number = params["second_number"].to_i
    @third_number = params["third_number"].to_i

    g = Guess.new
    g.first_num = params["first_number"].to_i
    g.second_num = params["second_number"].to_i
    g.third_num = params["third_number"].to_i
    g.save

    @list = Guess.all


    # if @second_number > @first_number && @third_number > @second_number
    #   @result = "Yes!"
    # else
    #   @result = "No."
    # end

    render("/index/all_guesses.html.erb")
  end


  def answer
    #params = {"rule" => "Hi there"}

    @user_answer = params["rule"]


    render("/index/show_answer.html.erb")
  end

end
