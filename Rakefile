require "bundler/gem_tasks"
require "rake/clean"


task :default => :TicTacToe

 desc 'Ejecuta TRES EN RALLA'
 task :tictactoe do
   sh "ruby -Ilib bin/play.rb "
end

 desc 'Ejecuta todos los test para la clase'
 task :test do
   sh "ruby -Ilib test/alu4216tictactoe_test.rb"
end	

desc 'Ejecuta test con --format documentation'
task :rspec do
  sh "rspec -Ilib spec/alu4216tictactoe_spec.rb --format documentation"
end

desc 'Ejecuta test '
task :spec do
	sh "rspec -Ilib spec/alu4216tictactoe_spec.rb"
end 

