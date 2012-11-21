
require "~/LPP/Pract9/alu4216tictactoe/lib/alu4216tictactoe/player.rb"

module TicTacToe
  class DumbPlayer < Player
    def move( board )
      moves = board.moves
      moves[rand(moves.size)]
    end
  end
end 
