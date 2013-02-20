require '../lib/deck'
require '../lib/card'

deck = Deck.new
deck.build

puts "#{deck.cards.length} should be 52."

puts "#{deck.cards[12].value} should be king."

puts "#{deck.cards[51].suit} should be clubs."

puts "#{deck.cards.shuffle!} should return random order of suits and values"

puts "#{deck.cards}"

last_three = deck.cards[-3..-1]

p "#{deck.deal(3)} should have the same cards as #{last_three}" 
