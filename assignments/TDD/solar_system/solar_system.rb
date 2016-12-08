class Solar_System
   attr_accessor :name
   def initialize
     @name = 'Andromeda'
     @planets = ["Mercury", "Venus", "Earth", "Mars", "Asteroid Belt", "Jupiter", "Saturn", "Uranus", "Neptune"]
   end
  def name=(name)
    @name = name
  end
  def planets
    @planets
  end
  def planets_count
    @planets.count
  end
  def Super_Nova
    @planets.clear
  end
end

class Planet < Solar_System
   attr_accessor :name,:description,:population,:planet
  def name=(name)
    @name = name
  end
  def description=(description)
    @description = description
  end
  def population=(population)
    @population = population
  end
  def add_planet
    @planets.push(planet)
  end
end
