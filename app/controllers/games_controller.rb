class GamesController < ApplicationController
  def new
    @letters = ("a".."z").to_a.sample(10)
  end

  def score
    @word = params[:word]
    @letters = params[:letters].gsub(/\s+/, "")
    # @result = @word <=> @letters

    @result = @letters.include?(@word)
    raise
  end
end
