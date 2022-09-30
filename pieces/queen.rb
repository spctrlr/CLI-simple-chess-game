require_relative 'piece.rb'
require_relative 'slideable.rb'

class Queen < Piece
  include Slideable
  
  def symbol
    '♛'.colorize(color)
  end

  protected

  def move_dirs
    horizontal_and_vertical_dirs + diagonal_dirs
  end
end
