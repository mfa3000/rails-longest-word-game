class GamesController < ApplicationController



  def new
    @letters = Array.new(10)
    charset = Array('A' .. 'Z')
    @letters.map! {charset.sample}
    puts @test
  end

  def score
    # The word can’t be built out of the original grid ❌
    # The word is valid according to the grid, but is not a valid English word ❌
    # The word is valid according to the grid and is an English word ✅
    letters = params[:letters]
    answer = params[:answer].upcase

    answer.each_char do |char|
     puts @test
      if !letters.include?(char)
        wordOk = false
        puts wordOk
        break
      else
        wordOk = true
        puts wordOk
      end
    end


  end

end
