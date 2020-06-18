# Module for all the displays
module Display
  def welcome_message
    "*********************************************\n******* Welcome to Tic Tac Toe game *********\n*********************************************"
  end
  def enter_player(n)
    "\nPlayer#{n}, Please enter your name"
  end
  def assign_totem(player)
      "\n#{player.name} your totem is #{player.totem}\n"
  end
  def display_grid(grid_array)
    "\n#{grid_array[0]} | #{grid_array[1]} | #{grid_array[2]}\n---------\n#{grid_array[3]} | #{grid_array[4]} | #{grid_array[5]}\n---------\n#{grid_array[6]} | #{grid_array[7]} | #{grid_array[8]}\n"
  end
  def pick_number(name)
    "#{name} Pick an avalible number"
  end  
  def pick_not_valid
    "\nYour pick is not valid ! pick a number from 1 to 9"
  end 
  def already_picked
    "\nNumber already picked, Try again\n"
  end
  def the_winner (name)
    "\nThe winner is: #{name}\n"
  end
  def draw
    "\nIt is a Draw\n"
  end  
end
