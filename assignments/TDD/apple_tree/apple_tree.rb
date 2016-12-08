class Apple_Tree
   attr_accessor :height, :age, :apples
   def initialize
    @apples = []
     @height = 0
     @age = 0
     @apples = []
    #  rand(1..30)
   end
  def count
    @apples.count
  end
  def year_gone_by
    if @age >8
      @apples.clear
      @age+=1
    elsif @age > 2
      @apples.push("Apple")
      @height += 5
      @age+=1
    else
      @height += 2
      @age+=1
    end
  end
  def pick_apples
    @apples.clear
  end
  # def grow_apples
  #   @apples.push("Apple")
  # end
end
