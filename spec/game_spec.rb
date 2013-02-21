require '../lib/game'
require '../lib/player'
require '../lib/deck'
require '../lib/card'

player1 = Player.new("Bluto")
player2 = Player.new("Cid")

deck = Deck.new
game = Game.new([player1, player2], deck)


puts "#{game} should be an instance of Game."
puts "#{game.over?} should be false."

puts player1.add_book 

puts "#{game.winner.name} should be Bluto"



puts "#{game.deck_empty?} should return true"
puts "#{game.hand_empty?} should return true\n\n"
puts "over? test: #{game.over?} should be true.\n\n"

deck.build
puts "#{game.deck_empty?} should return false"

player1.receive_hand([Card.new("Spades","King")])
player2.receive_hand([Card.new("Spades","King")])
puts "#{game.hand_empty?} should return false\n\n"

puts "over? test: #{game.over?} should be false."



