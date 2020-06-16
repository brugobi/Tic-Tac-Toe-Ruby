#Module with all validation methods
module Validation
  ARRAY_POSITIONS = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  def pick_valid?(pick)
    result = false
    if ARRAY_POSITIONS.include?(pick)
      result = true
    end
    result
  end

  def already_picked? (pick, board_grid)
    result = false
    if board_grid.include?(pick)
      result = true
    end
    result
  end
# ARRAY_POSITIONS.include?(pick)? true : result false   
end

# teste 
include Validation
p Validation.already_picked?(6, [1, 2, 7, "X", 6])