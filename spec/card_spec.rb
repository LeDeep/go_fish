require '../lib/card'
card = Card.new
puts "#{card} is an instance of Card"
card.suit = "Hearts"
puts "#{card.suit} should be 'Hearts'"
card.suit = "Kookamunga"
puts "#{card.suit} should be 'Kookamunga'"
card.value = "11"
puts "#{card.value} should be between 1 and 13"
card.value = "jack"
puts "#{card.value} should return jack"
card.value = "stuff"
puts "#{card.value} should return stuff"