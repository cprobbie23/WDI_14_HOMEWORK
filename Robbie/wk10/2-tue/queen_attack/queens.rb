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
    
    
  end

end