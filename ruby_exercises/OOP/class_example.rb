# class CodingDojo
#   @@no_of_branches = 0
#   def initialize(id, name, address)
#     @branch_id = id
#     @branch_name = name
#     @branch_address = address
#     @@no_of_branches += 1
#     puts "\nCreated branch #{@@no_of_branches}"
#   end
#   def hello
#     puts "Hello CodingDojo!"
#   end
#   def displayAll
#     puts "Branch ID: %d" % @branch_id
#     puts "Branch Name: %s" % @branch_name
#     puts "Branch Address: %s" % @branch_address
#   end
# end
# # now using above class to create objects
# branch = CodingDojo.new(253, "SF CodingDojo", "Sunnyvale CA")
# branch.displayAll
# branch2 = CodingDojo.new(155, "Boston CodingDojo", "Boston MA")
# branch2.displayAll

# class ParentClass
#     def a_method
#       puts 'b'
#     end
#   end
#   class SomeClass < ParentClass  # < means inherit (or "extends" if you are from Java background)
#     def another_method
#       puts 'a'
#     end
#   end
#   instance = SomeClass.new
#   instance.another_method # => "a"
#   instance.a_method       # => "b"

class Mammal
  def initialize
    puts 'I am alive!'
  end
  def breathe
    puts 'Inhale and exhale'
  end
end

# cat = Mammal.new
# cat.breathe

class Cat < Mammal
  def jerk
    puts 'scratching you...'
    self
  end
  def speak
    puts "Meow"
    self
  end
  def who_am_i
    puts self
    self
  end
end
chloe = Cat.new
chloe.speak.who_am_i.jerk
# chloe = Cat.new #creates new class called Cat, 'I am alive!' should print on the screen
# chloe.jerk # prints 'scratching you' on the screen
# chloe.speak # prints 'Meow'
# chloe.breathe # can access the Mammal methods as well, prints 'Inhale and exhale'
# chloe.who_am_i #prints the cat object
