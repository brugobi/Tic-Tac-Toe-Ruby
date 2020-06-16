#Module with all validation methods
module Validation
  def pick_valid?(pick)
    ARRAY_POSITIONS = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    result = false
    array_positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    if ARRAY_POSITIONS.include?(pick)
      result = true
    end
    result
  end

  def already_picked? (pick , board_grid)
    result = false
    if board_grid.include?(pick)
      result = true
    end
    result
  end
# ARRAY_POSITIONS.include?(pick)? true : result false   
end

p already_picked?(3, [1, 2, 7, "X", 6])