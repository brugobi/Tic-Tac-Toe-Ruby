# spec/project_spec.rb
require './lib/player'
require './lib/board'

describe Player do
  let (:player_test) { Player.new('X', 'player1', [1, 4, 7]) }
  describe '#winner?' do
    it 'winner is player 1' do
      expect(player_test.winner?).to eql(true)
    end
  end
end

describe Board do
  let (:test_board) { Board.new([1, 2, 'X']) }
  describe '#grid_filled?' do
    it 'grid is not completely filled with strings' do
      expect(test_board.grid_filled?).to eql(false)
    end
  end
  let (:test_pick) { 9 }
  describe '#pick_valid?' do
    it 'position picked is a valid position' do
      expect(test_board.pick_valid?(test_pick)).to eql(true)
    end
  end
  let (:test_not_picked) { 3 }
  describe '#not_picked?' do
    it 'position not picked yet?' do
      expect(test_board.not_picked?(test_not_picked)).to eql(false)
    end
  end
end
