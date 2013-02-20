require './lib/hand'
require './lib/deck'
require './lib/card'

Deck.new
players = [Player.new("Player 1"),Player.new("Player 2")]
Game.new(players)
players.each { |player| player.hand = Deck.deal(7)}


puts "Welcome to Go Fish!"


until game.over?

	players.each do |player|
		puts "#{player.name}, it's your turn.\n\n"
		turn = Turn.new(player)		
		until turn.over?
			#stuff
			unless turn.over?
				#more stuff
			end
		end
		puts "blah blah blah related"
	end
end

player1_hand = Hand.new(Deck.deal(7))
player2_hand = Hand.new(Deck.deal(7))