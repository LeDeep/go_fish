class Game
	attr_reader :deck
  def initialize(players, deck)
		@players = players
    @deck = deck
	end
	
	def over?
		deck_empty? || hand_empty?
	end

	def winner
		@players.max_by {|player| player.books}.name
	end

  def deck_empty?
    deck.cards.length == 0
  end

  def hand_empty?
    @players.any? {|player| player.hand.length == 0 }
  end


end

