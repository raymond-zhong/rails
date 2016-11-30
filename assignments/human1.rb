class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @health       = 100
    @strength     = 3
    @stealth      = 3
    @intelligence = 3
    self
  end
  def attack(obj)
    if obj.class.ancestors.include?(Human)
      puts obj.health
      obj.health -= 10
      puts obj.health
    else
      puts @health
    end
    self
  end
  # def attacked
  #   @health -= 10
  #   puts @health
  #   self
  # end
  # def health
  #   @health
  #   puts @health
  #   self
  # end
end

Ray = Human.new
Ray2 = Human.new
Ray.attack(Ray2)
# Ray.health
# Ray2.health

# print Ray2.class.ancestors.include?(Human)
