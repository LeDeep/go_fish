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

def get_request(player)
  puts "Please request a card value. You must have it in your hand already! (Example: 'Aces' or 'Twos')"
    values = %w{ ace two three four five six seven eight nine ten jack queen king }
    request = values[rand(0..12)]
    #count3 = 0
    puts "#{player.name}: #{player.hand}"
    #puts "#{other_player.name}: #{other_player.hand}"
    until player.has_card?(request) == true #|| count3 == 20
      #puts "Invalid request. Please make another selection, of a card value in your hand."
      puts "Invalid request was: #{request}" #+ " " + count3.to_s
      request = values[rand(0..12)]   
      #count3 += 1
    end
    request
end

#count = 0
until game.over? #|| count == 7
  #count += 1
	players.each do |player|
		puts "#{player.name}, it's your turn!\n\n"
    puts "Here is what your hand looks like:" 
    puts "    #{player.hand}"
    player.ready		
    count9 = 0
		until player.done? || count9 == 4
      
      other_player = (players-[player])[0] 
     
			
      #request = (gets.chomp)[0..-2]
			
      request = get_request(player)
      puts "!!Valid request: #{request}" #+ " " + count3.to_s
      count2 = 0
      until other_player.has_card?(request) == false || player.hand.length == 0 || other_player.hand.length == 0 || count2 == 30
        puts "Other player has your card! #{request}"
        count2 += 1 
        puts "#{other_player.name} has your card!"
        given_cards = other_player.give_cards(request)
        puts "# #{other_player.name} gives #{given_cards} on #{request} request"
        player.receive_hand(given_cards)
        puts "You get those cards and get to ask again."
        puts "#result of exchange #{player.name}: #{player.hand}"
        puts "#result of exchange #{other_player.name}: #{other_player.hand}"
        request = get_request(player)
      end
      puts "Sorry! #{other_player.name} doesn't have any #{request}" + "s, Go Fish!"
      player.go_fish(deck.deal(1),request) #ends turn
      puts "WONDERFUL! You found the card you requested! You get another turn!" if player.done? == false
      last_score = player.books
      put_down_book = player.add_book
      if put_down_book
        sorted_books = put_down_book.sort_by { |card| card.value }
        puts "CONGRATULATIONS! #{player.name} has puts down the following book(s): #{sorted_books} for #{player.books-last_score} points"  
      end
      count9 += 1
    end
    puts "** Turn ending hand for #{player.name}: #{player.hand}."
	end
end
puts "#{players[0].books} and #{players[1].books}"
puts "Game over! #{game.winner} wins!"


#player1_hand = Hand.new(Deck.deal(7))
#player2_hand = Hand.new(Deck.deal(7))