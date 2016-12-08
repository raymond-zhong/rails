class Human
  attr_accessor :strength, :intelligence, :health, :stealth
  def initialize
    @strength = 3
    @intelligence = 3
    @stealth = 3
    @health = 100
  end
  def attack(obj)
    # check if the attacked object's class is Human or inherits from the Human class
    if obj.class.ancestors.include?(Human)
      puts obj.health
      obj.health -= 10
      puts obj.health
      # remember that we don't need to write "return" in ruby
      # stating true below will automatically return the boolean true
      true
    else
      false
    end
  end
end

# ray_1 = Human.new
# ray_2 = Human.new
#
# ray_1.attack(ray_2)
