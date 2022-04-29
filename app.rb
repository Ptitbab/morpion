require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'Application'
require 'Boardcase'
require 'Board'
require 'Game'
require 'Player'
require 'Show'

loop do
    @my_game = Game.new

    9.times do 
        @my_game.display_board
        @my_game.player_move
        @my_game.victory
        @my_game.switch_player
    end
    @my_game.display_board
end

