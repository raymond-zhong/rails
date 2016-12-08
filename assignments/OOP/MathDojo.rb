class MathDojo
  attr_accessor :value1, :value2

  def initialize
    @value = 0
    @value1 = value1
    @value2 = value2
    self
  end

  def add(value1, value2=[0])
    #  *args
    if value1.class == Fixnum
      @value += value1
      self
    else
    @value += (value1.reduce(0, :+) + value2.reduce(0, :+))
    puts @value
  end
    self
  end

  def subtract(value1, value2)
    @value -= (value1.reduce(0, :+) + value2.reduce(0, :+))
    puts @value
    self
  end

  def result
    puts @value
  end

end

# MathDojo.new.add(2).add(2, 5).subtract(3, 2).result
MathDojo.new.add(1).add([3, 5, 7, 8], [2, 4.3, 1.25]).subtract([2,3], [1.1, 2.3]).result
