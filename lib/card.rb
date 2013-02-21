class Card
	attr_reader :suit, :value
	def initialize(suit="nothing",value="nothing")
		@suit = suit
		@value = value
	end

	def suit=(string)
		@suit = string #string if ["Hearts","Spades","Clubs","Diamonds"].include?(string.capitalize)
	end

	def value=(number)
		@value = number #number if number.to_i.between?(2,10) || ["Ace", "King", "Queen", "Jack"].include?(number.to_s.capitalize)
	end

	def to_s
		@value + " of " + @suit
	end
end