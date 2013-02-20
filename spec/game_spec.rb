require '../lib/game'
require '../lib/player'

game = Game.new([Player.new("Bluto"),Player.new("Cid")])

puts "#{game} should be an instance of Game."
puts "#{game.over?} should be false."
