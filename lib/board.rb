# inputs : number picked(integer) and player( cross or circle) string : X or O
# outputs : [1 , X , 3, 4, 5, 6, 7, 8, 9]
class Board
  attr_accessor :grid
  def initialize(grid = [1, 2, 3, 4, 5, 6, 7, 8, 9])
    @grid = grid
  end

  # this method change the board_grid
  def update_grid(picked_numb, player_totem)
    @grid[picked_numb - 1] = player_totem
    @grid
  end

  def grid_filled?
    @grid.all?(String)
  end
end
