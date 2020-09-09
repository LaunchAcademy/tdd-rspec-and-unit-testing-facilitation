require_relative "./lib/hand.rb"
require_relative "./lib/deck.rb"

puts "Welcome to the game"

deck = Deck.new 
hand1 = Hand.new(deck.deal(2))
hand2 = Hand.new(deck.deal(2))

puts "Player 1 was dealt #{hand1.card_summary}"
puts "Player 2 was dealt #{hand2.card_summary}"

# compare totals and declare the winner!