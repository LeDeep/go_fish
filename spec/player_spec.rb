require '../lib/player'
require '../lib/hand'
require '../lib/card'

player = Player.new("Lupin")

puts "#{player} is an instance of Player."
puts "#{player.name} is Lupin"
puts "#{player.books} is 0."
player.add_book
puts "#{player.books} is 0."

puts "#{player.receive_hand([Card.new("Spades","Ace")])} should be Ace of Spades"

puts "#{player.has_book} should be nil"
player.receive_hand([Card.new("Hearts","Ace"),Card.new("Diamonds","Ace"),Card.new("Clubs","Ace"),Card.new("Spades","Ace"),Card.new("Hearts","Two")])


# puts "#{player.has_book} should be an array of cards."
# player.add_book
# puts "#{player.has_book} should be nil"
# puts "#{player.books} should be 1."
# puts "#{player.hand} should contain only the Two of Hearts."

# puts "#has_card?: #{player.has_card?("Two")} should be true."
# puts "#has_card?: #{player.has_card?("Ace")} should be false."

# puts "#{player.done?} should be false."

player.go_fish(Card.new("Clubs", "Three"))
puts "#{player.done?} should be true."
puts "#{player.hand} should contain three of clubs"


puts "#{player.ready} should be false."

#player.receive_hand([Card.new("Hearts","Ace"),Card.new("Diamonds","Ace"),Card.new("Clubs","Ace"),Card.new("Spades","Ace")])

puts "#{player.give_cards("Ace")} should be all the Aces."
puts "#{player.hand} should not contain Aces. "