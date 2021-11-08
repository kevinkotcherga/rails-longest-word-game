class GamesController < ApplicationController
  def new
    @letters = Array.new(10){[*"A".."Z"].sample}
  end

  def score
    @responses = params[:responses]
    @letter = params[:letters]

    bool = @responses.chars.all? { |letter| @responses.count(letter) <= @letter.count(letter) }
      if bool
        @score = @responses.size
      else
        @score = "naze !"
      end
  end

end
