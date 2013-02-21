require './lib/hand'
require './lib/deck'
require './lib/card'
require './lib/player'
require './lib/game'

deck = Deck.new
deck.build
players = [Player.new("Player 1"),Player.new("Player 2")]
game = Game.new(players,deck)
players.each { |player| player.receive_hand(deck.deal(7))}

puts "Welcome to Go Fish!"


until game.over?

	players.each do |player|
    puts "#{player.hand}"
		puts "#{player.name}, it's your turn!\n\n"
    player.ready		
		until player.done?
      other_player = (players-[player])[0] 
     
			
      #request = (gets.chomp)[0..-2]
			
      puts "Please request a card value. (Example: 'Aces' or 'Twos')"
      request = "Ace"

      until other_player.has_card?(request) == false
        puts "{other_player.name} has your card!"
        player.receive_cards(other_player.give_cards(request))
        puts "You get those cards and get to ask again."
      end
      puts "Go fish!"
      player.go_fish(deck.deal(1)) #ends turn
		  #player.add_book
    end
	end
end

#player1_hand = Hand.new(Deck.deal(7))
#player2_hand = Hand.new(Deck.deal(7))