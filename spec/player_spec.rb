require '../lib/player'
require '../lib/hand'


player = Player.new("Lupin")

puts "#{player} is an instance of Player."
puts "#{player.name} is Lupin"
puts "#{player.books} is 0."
player.add_book
puts "#{player.books} is 1."