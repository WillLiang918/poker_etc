class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

end

class Deck
  SUITS = [:spade, :heart, :club, :diamond]
  attr_reader :deck

  def initialize
    @deck = Hash.new { |h,k| h[k] = [] }
    populate_deck
  end

  def populate_deck
    SUITS.each do |suit|
      13.times do
        @deck[suit] << Card.new(suit, :ace)
      end
    end

  end

end

class Hand
end

class Player
end

class Game
end
