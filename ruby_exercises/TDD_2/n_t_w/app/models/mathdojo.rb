class Mathdojo < ActiveRecord::Base
  attr_accessor :result
  def initialize
   @result = 0
  end
  def add *numbers
   @result += numbers.flatten.inject(:+)
   return self
  end
  def subtract *numbers
   @result -= numbers.flatten.inject(:+)
   return self
  end
  def multiply_by_the_sum *numbers
    if @result != 0
      # binding.pry
      @result1= @result
      @result = numbers.flatten.inject(:+)
      @result = @result * @result1
      self
    else
          @result = numbers.flatten.inject(:+)
   return self
      end
      return self
  end
  def reset *numbers
   @result = 1
   return self
  end
 end
