#require "~/LPP/Pract9/alu4216tictactoe/lib/alu4216tictactoe.rb"
module TicTacToe
  class Player
    def initialize( mark )
      @mark = mark # "X" or "O" or " "
    end
    
    attr_reader :mark
    
    def move( board )
      raise NotImplementedError, "Player subclasses must define move()."
    end
    
    def finish( final_board )  
    end
  end
end
