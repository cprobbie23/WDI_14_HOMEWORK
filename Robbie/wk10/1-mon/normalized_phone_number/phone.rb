class Phone

  def initialize(num)
    @num = num
    
  end

  def number
    return @num[1,10] if @num.length == 11 && @num[0] == '1'
    return '0000000000' if @num.length == 11 && @num[0] != '1'
    return '0000000000' if @num.length == 9
    # multiple ways of solving the problem
    # @num.split('').select {|elem| elem == elem.to_i.to_s }.join
    # @num.split('').select {|elem| elem.match /[\d]/ }.join
    # @num.gsub /[^\d]/, ''
    return @num.scan(/[\d]/).join
  end

  def area_code
    @num[0,3]
  end

  def to_s
    "(#{@num[0,3]}) #{@num[3,3]}-#{@num[6,4]}"
  end
end