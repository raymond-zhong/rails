require_relative 'human'

class Ninja < Human
  def initialize
    @stealth = 175
    self
  end
  def steal
    @health += 10
    self
  end
  def get_away(obj)
      obj.health -= 15
      self
  end
end
