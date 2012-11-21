require "~/LPP/Pract9/alu4216tictactoe/lib/alu4216tictactoe/tictactoe.rb"
#require "~/LPP/Pract9/alu4216tictactoe/lib/player.rb"
#require "~/LPP/Pract9/alu4216tictactoe/lib/HumanPlayer.rb"
#require "~/LPP/Pract9/alu4216tictactoe/lib/DumbPlayer.rb"
#require "~/LPP/Pract9/alu4216tictactoe/lib/SmartPlayer.rb"


describe TicTacToe::Game do
  before :each do
  @obj_1=TicTacToe::Game.new TicTacToe::HumanPlayer, TicTacToe::DumbPlayer
   end 


it "El humano tiene que tener una ficha"do
	cont=0
	40.times do 
             if  @obj_1.o_player.is_a? TicTacToe::HumanPlayer
	     cont+=1
 	     end
	end
	raise ScriptError, "El humano siempre es circulo " unless cont<41 #Salta el error porque aveces el randon elije que el O siempre sea
end									   #el humano. Tener en cuenta que el random es solo de 2 posibilidades
it "Uno de los dos jugadores tiene que ser el humano" do		   #lo que aumenta la probabilidad de que se repita siempre una de las 
									   #dos posibilidades,no que falle el programa en si.
	if @obj_1.x_player.is_a?TicTacToe::HumanPlayer
		var=true
	end 
	if @obj_1.o_player.is_a?TicTacToe::HumanPlayer
		var=true
	end 
	raise ScriptError," Ningun jugador es humano" unless var==true 
end 
it "x_player debe ser siempre X" do 
	@obj_1.x_player.mark.should=="X"
end
it "o_player debe ser siempre O" do
	@obj_1.o_player.mark.should=="O"
end 
end

describe TicTacToe::Board do
  before :each do
  @obj_2=TicTacToe::Board.new([" "] * 9)
   end

it "Los movimientos deben ser los correspondientes " do

	TicTacToe::Board::MOVES.should== %w{a1    a2   a3   b1   b2   b3   c1   c2   c3}
end
it "Los indices deben coincidir" do
	TicTacToe::Board::INDICES.should==Hash.new { |h, k| h[k] = TicTacToe::Board::MOVES.find_index(k) }
end
it "La funcion self de indices  debe devolver correctamente" do
	TicTacToe::Board::INDICES.each_with_index do |m,i|
		i.should==0
		i+=1
	end
end 
it "La funcion self de nombres deber devolver correctamente" do
	array =%w{a1    a2   a3   b1   b2   b3   c1   c2   c3}
	i=0
	TicTacToe::Board::MOVES.each do |m| 
		m.should==array[i]
		i=i+1
	end
end

it "Deben darse empates,victorias y ganadores" do
	score =[]
	40.times do 
	score.push@obj_2.won?
        end
        raise ScriptError,  "No se han conseguido las 3 posibilidades win,lose and tie "unless score.length >= 3
  end

it "Comprobacion de posibilidades horizontal" do
  TicTacToe::Board::HORIZONTALS.should == [ [0, 1, 2], [3, 4, 5], [6, 7, 8] ]
end
it "Comprobacion de posibilidade de columnas "do
   TicTacToe::Board::COLUMNS.should == [ [0, 3, 6], [1, 4, 7], [2, 5, 8] ]

end

it"Comprobacion de posibilidades de diagonales "do
   TicTacToe::Board::DIAGONALS.should== [ [0, 4, 8], [2, 4, 6] ]
end
it"Comprobacion de lista de movimientos" do
	@obj_2.moves.include? array =%w{a1    a2   a3   b1   b2   b3   c1   c2   c3}

end
end 




