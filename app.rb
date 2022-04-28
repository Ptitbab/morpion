require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'Application'
require 'Boardcase'
require 'Board'
require 'Game'
require 'Player'
require 'Show'


@my_game = Game.new

loop do 
    @my_game.display_board
    @my_game.player_move
    if @my_game.victory == true
        puts "#{@current_player} a gagné!"
        break
    else
        @my_game.switch_player
    end
end


