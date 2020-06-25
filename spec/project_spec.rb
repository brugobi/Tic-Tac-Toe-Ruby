#spec/project_spec.rb
require './lib/player'
require './lib/board'

describe Player do
    let (:player_test) {Player.new('X', 'player1', [1, 4, 7])}
    describe "#winner?" do
        it "winner is player 1" do
            expect(player_test.winner?).to eql(true)
        end
    end
end

describe Board do
    let (:test_board) {Board.new([1, 2, 'X'])}
    describe "#grid_filled?" do
        it "grid is not completely filled with strings" do
            expect(test_board.grid_filled?).to eql(false)
        end
    end
end

