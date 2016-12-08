class Mammal
  attr_accessor :alive
  def initialize
    @health = 150
    self
  end
  def display_health
    puts @health
  end
end

# dog = Mammal.new.display_health
