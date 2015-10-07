class TowersOfHanoi
  attr_accessor :towers

  def initialize
    @towers = [[3, 2, 1], [], []]
  end

  def won?
    if @towers[1] == [3,2,1] || @towers[2] == [3,2,1]
      return true
    else
      return false
    end
  end

  def move(from_tower, to_tower)
    if valid_move?(from_tower, to_tower)
      from_disc = towers[from_tower].pop
      towers[to_tower] << from_disc
    end
  end

  def valid_move?(from_tower, to_tower)
    return false unless [from_tower, to_tower].all? { |i| i.between?(0, 2) }

    !@towers[from_tower].empty? && (
      @towers[to_tower].empty? ||
      @towers[to_tower].last > @towers[from_tower].last
    )
  end
end
