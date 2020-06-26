# spec/project_spec.rb
require_relative './lib/player'
require_relative './lib/board'

describe Player do
  let(:player_test1) { Player.new('X', 'player1', [1, 4, 7]) }
  let(:player_test2) { Player.new('X', 'player2', [1, 3, 7]) }
  describe '#winner?' do
    it 'player2 is not a winner' do
        expect(player_test2.winner?).not_to eql(true)
    end
    it 'player 1 is a winner' do
      expect(player_test1.winner?).to eql(true)
    end
  end
end

describe Board do

  let(:test_board2) { Board.new([1, 2, 'X']) }
  let(:test_board3) { Board.new(['X', 'O', 'X']) }
  describe '#grid_filled?' do
    it 'grid is not completely filled with strings' do
      expect(test_board2.grid_filled?).not_to eql(true)
    end

    it 'grid is completely filled with strings' do
        expect(test_board3.grid_filled?).to eql(true)
    end

  end
  let(:test_pick) { 9 }
  describe '#pick_valid?' do
    it 'position picked is a valid position' do
      expect(test_board.pick_valid?(test_pick)).to eql(true)
    end
  end
  let(:test_not_picked) { 3 }
  describe '#not_picked?' do
    it 'position not picked yet?' do
      expect(test_board.not_picked?(test_not_picked)).to eql(false)
    end
  end
  let(:pick) { 2 }
  let(:totem) { 'X' }
  describe '#update_grid' do
    it 'update the grid of the bord by puting the totem in the right position' do
      expect(test_board.update_grid(pick, totem)).to eq([1, 'X', 'X'])
    end
  end
end
