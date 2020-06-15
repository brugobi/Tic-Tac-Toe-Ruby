# inputs : number picked(integer) and player( cross or circle) string : X or O
# outputs : [1 , X , 3, 4, 5, 6, 7, 8, 9]
class Board
  @@board_grid = [1 , 2 , 3, 4, 5, 6, 7, 8, 9]
  attr_accessor :picked_numb , :player_totem
  def initialize (picked_numb = 0, player_totem = '')
    @picked_numb = picked_numb
    @player_totem = player_totem
  end
  # this method change the board_grid
  def update_grid
    @@board_grid[@picked_numb -1] = player_totem
    return @@board_grid
  end
end