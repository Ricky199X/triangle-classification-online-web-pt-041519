class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
    @sides = [@side1, @side2, @side3]
  end

  def kind
    if @sides.any? {|number|number <= 0 || @side1 + @side2 <= @side3 || @side2 + @side3 <= @side1 || @side1 + @side3 <= @side2}
      raise TriangleError
    elsif @side1 == @side2 && @side2 == @side3
      return :equilateral
    elsif @side1 == @side3 && @side2 != @side1 || @side1 == @side2 && @side3 != @side1 || @side2 == @side3 && @side1 != @side2
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
  end

end
