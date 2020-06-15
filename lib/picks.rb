# imput: picks_players (array) output: winner or not

class Picks
    attr_accessor :picks_player
    def initialize (picks_player = [])
        @picks_player = picks_player
    end
    def winner?
        result = false
        possibilites = [[1, 2, 3],[4, 5, 6],[7, 8, 9],[1, 4, 7],[2, 5, 8],[3, 6, 9],[1, 5, 9],[3, 5, 7]]
        possibilites.each do |array| 
            if array.all? { |elem| @picks_player.include?(elem)}
                result = true
            end    
        end
        result
    end
    
end
