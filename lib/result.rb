# imput: picks_players (array) output:
def winner
    picks_player = [4,5,7,6]
    result = false
    possibilites = [[1, 2, 3],[4, 5, 6],[7, 8, 9],[1, 4, 7],[2, 5, 8],[3, 6, 9],[1, 5, 9],[3, 5, 7]]
    picks_player_sorted = picks_player.sort
    
    possibilites.each do |array| 
        if array.all? { |elem| picks_player.include?(elem)}
            result = true
        end    
    end
end