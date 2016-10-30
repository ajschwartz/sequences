class GuessesController < ApplicationController

  def index
    # params = {"first_number"=>"0", "second_number"=>"2", "third_number"=>"4"}

    g = Guess.new
    g.first_num = params["first_number"]
    g.second_num = params["second_number"]
    g.third_num = params["third_number"]
    if g.first_num != nil
      g.save
    else
    end

    @list = Guess.all

    render("guesses/index.html.rb")
  end

  def answer
    # params = {"rule" => "Hi there"}

    @user_answer = params["rule"]

    render("guesses/answer.html.rb")
  end

end
