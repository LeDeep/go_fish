class Deck
	attr_reader :build, :cards
	def initialize
		@cards = []
		@suits = %w{spades hearts diamonds clubs}
		@values = %w{ ace two three four five six seven eight nine ten jack queen king }
	end

	def build
		@cards = []
		52.times do |i|
			card = Card.new(@suits[i/13],@values[i%13])
			@cards << card			
		end
		@cards.shuffle!
	end

	def pop_cards(number)
		popped = []
		number.times do |i|
			popped << @cards.pop
		end
		popped
	end

	
end


