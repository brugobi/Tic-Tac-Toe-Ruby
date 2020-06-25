#spec/project_spec.rb
require './lib/player'
require './lib/board'

describe Player do
    describe "#winner?" do
        it "winner is player 1" do
            test = Player.new('X')
            expect(test.winner?).to eql(false)
        end
    end
end
