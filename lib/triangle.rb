class Triangle
  attr_accessor :a, :b, :c, :kind
  
  def initialize(a,b,c) 
    @a = a
    @b = b
    @c = c
  end

  def kind 
    if self.a + self.b <= self.c || self.c + self.b <= self.a || self.a + self.c <= self.b 
        raise TriangleError
    else
      if self.a == self.b && self.b == self.c
        self.kind = :equilateral
      elsif self.a == self.b || self.b == self.c || self.a == self.c
        self.kind = :isosceles
      else
        self.kind = :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "alert"
    end
  end
end
