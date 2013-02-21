require '../lib/turn'
require '../lib/player' 
require '../lib/deck'
require '../lib/card'


player = Player.new("Player 1")
deck = Deck.new
turn = Turn.new(player, deck)



puts "#{turn} should be an instance of Turn."
puts "#{turn.over?} should equal false."
puts "#{turn.deck} should be an instance of Deck."
