require 'pry'
class Queens
  def initialize(*args)
    @args
    @w_queen_pos = [0, 3]
    @b_queen_pos = [7, 3]
    if args.length > 0
      if args.first[:white] == args.first[:black]
        raise(ArgumentError) 
      end
      @w_queen_pos = args.first[:white]
      @b_queen_pos = args.first[:black]
    end
  end

  def white
    @w_queen_pos
  end

  def black
    @b_queen_pos
  end

  def to_s
    board = Array.new(8)
    8.times do |row_index|
      board[row_index] = Array.new(8)
      8.times do |col_index|
          board[row_index][col_index] = "O"
      end
    end
    board[@w_queen_pos[0]][@w_queen_pos[1]] = "W"
    board[@b_queen_pos[0]][@b_queen_pos[1]] = "B"
    new_board = board.map do |row|
      row.join(' ')
    end
    new_board.join("\n")
  end

  def attack?
    if @w_queen_pos[0] == @b_queen_pos[0] || @w_queen_pos[1] == @b_queen_pos[1]
      return true
    elsif (@w_queen_pos[0] - @b_queen_pos[0] == @w_queen_pos[1] - @b_queen_pos[1])
      return true
    else
      return false
    end
  end
end