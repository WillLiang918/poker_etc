require 'rspec'
require 'towers'

describe "Towers" do

let(:towers) { TowersOfHanoi.new }

  describe "#move" do

    it "correctly moves a disc from a tower to a tower" do
      towers.move(0, 1)
      expect(towers.towers).to eq([[3,2],[1],[]])
    end

    it "should be only allowed to move a smaller disc to larger one" do
      towers.move(0, 1)
      towers.move(0, 1)
      expect(towers.towers).to eq([[3,2],[1],[]])
    end
  end

  describe "#won?" do
    it "returns true if all discs are on the second pole and in the right order" do
      towers.towers = [[],[3,2,1],[]]
      expect(towers.won?).to eq(true)
    end


    it "returns true if all discs are on the third pole and in the right order" do
      towers.towers = [[],[],[3,2,1]]
      expect(towers.won?).to eq(true)
    end
  end
end
