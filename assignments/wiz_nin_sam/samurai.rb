require_relative 'human'

class Samurai < Human
  @@count = 0
  def initialize
    @intelligence = 25
    @health = 200
    @@count+=1;
    self
  end
  def meditate
    puts @health
    @health = 200
    puts @health
    self
  end
  def death_blow(obj)
      puts obj.health
      obj.health = 0
      puts obj.health
    end
  def self.how_many
    puts "There are #{@@count} Samurai's."
    self
  end
end

Ray_5= Samurai.new
Ray_6= Samurai.new
Ray_7= Samurai.new
Ray_5.death_blow(Ray_6)
Ray_6.meditate
Samurai.how_many
