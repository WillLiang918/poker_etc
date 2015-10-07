require 'rspec'
require 'poker'

describe "Card" do
  let(:card) {Card.new(:spade, :ace)}

  it "should have a suit" do
    expect(card.suit).to eq(:spade)
  end

  it "should have a value" do
    expect(card.value).to eq(:ace)
  end


end

describe "Deck" do
  let(:deck) {Deck.new}

  it "should only have four suits" do
    expect(deck.deck.length).to eq(4)
  end

  it "should contain 52 cards"

  it "should only have 13 differnt values"

end

describe "Hand" do

  it "should contain 5 card objects"
  it "should correctly determine the strength of the card combinations"

end

describe "Player" do

  it "should should have a hand"
  it "should return the correct amount of current funds"
  it "should allow player to bet"
  it "should be allow to fold"
  it "should be allow to raise"
  it "should be allow to see"

end

describe "Game" do

  it "should have a deck"
  it "should track the current player"
  it "should rotate the current player"
  it "should keep track of the total pot"
  it "should should have the strongest hand win the pot"
  it "should give the player with the strongest hand the winnings"
  it "should determine the strongest hand correctly"

end
