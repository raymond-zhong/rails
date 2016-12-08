require_relative 'human'

class Wizard < Human
  def initialize
    @intelligence = 25
    @health = 50
    self
  end
  def heal
    @health += 10
    self
  end
  def fireball(obj)
      obj.health -= 20
  end
end
