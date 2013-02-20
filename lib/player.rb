class Player
	attr_reader :name, :books

	def initialize(name)
		@name = name
		@books = 0
		@hand = 0
	end

	def hand=(card_array)
		@hand = card_array
	end

	def add_book
		@books += 1
	end
end
