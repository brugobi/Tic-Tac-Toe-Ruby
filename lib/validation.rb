#Module with all validation methods
module Validation
  def pick_valid?(pick)
    result = false
    array_positions = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    if array_positions.include?(pick)
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

end

p already_picked?(3, [1, 2, 7, "X", 6])