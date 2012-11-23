require "~/LPP/Pract9/alu4216tictactoe/lib/alu4216tictactoe/tictactoe.rb"
require "test/unit"

class TestTicTacToe < Test::Unit::TestCase
  
 def aleatorio
	score=[]
	40.times do
	@obj_1=TicTacToe::Game.new TicTacToe::DumbPlayer, TicTacToe::DumbPlayer
	score.push@obj_1.x_player.resul
 	end 
	assert(score.uniq.length >= 3, "score.uniq.length = #{score.uniq.length} score.length = #{score.length}")
  end
end 
