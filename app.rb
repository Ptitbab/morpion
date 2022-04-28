require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)
require 'Application'
require 'Boardcase'
require 'Game'
require 'Player'
require 'Show'


Game.new

board = Board.new

all_cases = Boardcase.all

board.display_board(all_cases)

board.move