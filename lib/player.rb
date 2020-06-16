# inputs : player name(string) ** outputs:
class Player
  attr_accessor :name
  POSSIBILITIES = [[1, 2, 3],[4, 5, 6],[7, 8, 9],[1, 4, 7],[2, 5, 8],[3, 6, 9],[1, 5, 9],[3, 5, 7]]
  def  initialize(name)
    @name = name
  end

  def winner?
        result = false
        POSSIBILITIES.each do |array| 
            if array.all? { |elem| @picks_player.include?(elem)}
                result = true
            end    
        end
        result
  end

end

