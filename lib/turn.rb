class Turn
	attr_reader :player, :points, :deck

	def initialize(player, deck)
		@player = player
		@over = false
		@points = 0
		@deck = deck
	end



	def over?
		@over
	end



end

#array = ["one","one","two"]
#array.uniq.each { |value| array.count(value) }