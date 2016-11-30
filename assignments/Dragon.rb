require_relative 'mammal'
class Dragon < Mammal
  def initialize
    @health = 170
    self
  end
  def fly
    @health -= 10
    self
  end
  def attack_town
    @health -= 50
    self
  end
  def eat_humans
    @health += 20
    self
  end
  def display_health
      puts "this is a dragon!"
      puts "#{super}"
  end
end

Ray = Dragon.new

Ray.attack_town.attack_town.attack_town.eat_humans.eat_humans.display_health
