class Card
  attr_reader :suit, :value

  def initialize(suit, value)
    @suit = suit
    @value = value
  end

end

class Deck

  VALUES = [:A, 2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K]

  SUITS = {
    spade: VALUES,
    heart: VALUES,
    club: VALUES,
    diamond: VALUES
  }

  attr_reader :deck

  def initialize
    @deck = []
    populate_deck
  end

  def populate_deck
    SUITS.each do |suit, card_values|
      card_values.each do |card_value|
        @deck << Card.new(suit, card_value)
      end
    end
  end

  def verify_suits?
    @deck.all? do |card|
      SUITS.keys.include?(card.suit)
    end
  end

  def verify_value?
    @deck.all? do |card|
      VALUES.include?(card.value)
    end
  end

  def shuffle_deck
    @deck.shuffle!
  end
end

class Hand
end

class Player
end

class Game
end
