class Player
	attr_reader :name, :books, :hand, :done

	def initialize(name)
		@hand = []
		@name = name
		@books = 0
		@done = false
	end

	def receive_hand(card_array)
		card_array.each { |card| @hand << card } if card_array.class == Array
	end

	def ready
		@done = false
	end	

	def go_fish(card)
		@done = true if @hand.include?(card) == false
		@hand << card		
	end

	def has_book
		hand_value_array = value_array
		book_array = []
		hand_value_array.each_with_index do |value,i|
		 	book_array << @hand[i] if hand_value_array.count(value) >= 4 
		end
		book_array == [] ? nil : book_array
	end

	def add_book
		book = has_book
		if book != nil
			@books += 1 
			@hand = @hand - book		
		end
	end

	def give_cards(card_value)
		matched = []
		@hand.each { |card| matched << card if card.value == card_value }
		@hand = @hand - matched
		matched
	end

	def has_card?(card_value) 
		value_array.include?(card_value)
	end		

	def done?
		@done
	end

	private 

	def value_array  
		array = []
		@hand.each { |card| array << card.value }
		array 
	end
end
