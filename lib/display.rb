# Module for all the displays
module Display
  def welcome_message
    "*********************************************\n******* Welcome to Tic Tac Toe game *********\n*********************************************"
  end
  def enter_player(n)
    "\nPlayer#{n}, Please enter your name"
  end
  def assign_totem(player_name, n)
    if n == 1
      "\n#{player_name} your totem is O\n"
    else
      "\n#{player_name} your totem is X\n"
    end
  end
  def display_grid(grid_array)
    "\n#{grid_array[0]} | #{grid_array[1]} | #{grid_array[2]}\n---------\n#{grid_array[3]} | #{grid_array[4]} | #{grid_array[5]}\n---------\n#{grid_array[6]} | #{grid_array[7]} | #{grid_array[8]}\n"
  end
end

# include Display
# puts Display.welcome_message
