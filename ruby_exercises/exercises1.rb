# just exercise
=begin
  comments
=end

# puts "hello"
# puts "Coding"
# puts "Dojo"
#
# puts "hello"
# puts "Coding"
#
# BEGIN {
#   puts "this is in the begin block"
# }
# END {
#   puts "this is in the end block"
# }
#
# x = 5; y = 10; z = x + y
# puts z

# first_name = "Raymond"
# last_name = "Zhong"
#
# puts "Your Name is "+first_name+" "+last_name

# puts "First name is  #{first_name} and last name is #{last_name}"

# puts "First name is  %s and last name is %s" % [first_name, last_name]

# z = 50
# puts "Value of z is #{z}"

# puts "Value of z is %d" %[z] #or %z, %s for string, % d for decimal, or %f for float

# puts "\t\tI am\n 5'10\" tall"
#
# a = 1
# b = 2
#
# puts a, b
#
# puts a+b
  #
  # %

# x = "CodingDojo"
# puts x
# puts x.length
# puts x.class
# puts x.capitalize
# puts x.upcase
# puts x.downcase
# puts x[2]
# puts "This word has the word 'Dojo'" if x.include?("Dojo")
# puts x.include?("Dojo")

# x = "john, charles, matt, joe"
# y = ""

# puts x.split(",")

# puts "Y is empty" if y.empty?

# puts "I am an instance of".class
# puts String.ancestors


# puts String.instance_methods == "instance".methods
# puts String.methods != "instance".methods
# String.new("I am an instance of the String class")

# puts "24 plus 8 is #{24 + 8}" # => "24 plus 8 is 32"
# puts '24 plus 8 is #{24 + 8}' # => "24 plus 8 is #{24 + 8}"

age = 22
# if age > 21
#   puts "Welcome to the party"
# else
#   puts "Not yet"
# end

# number = 15
# if number % 3 == 0 && number % 5 == 0
#   puts "FizzBuzz"
# elsif number % 3 == 0
#   puts "Fizz"
# elsif number % 5 == 0
#   puts "Buzz"
# end

# if !(age < 21)
#   puts "Welcome to the party"
# else
#   puts "Not yet"
# end

# unless age < 21
#   puts "Welcome to the party"
# else
#   puts "Not yet"
# end

# if ""
#   puts "I am positive"
# end
# if 0
#   puts "I am positive"
# end

# unless nil
#   puts "I am negative"
# end
# unless false
#   puts "I am negative"
# end

# puts "I am positive" if "hello"
# puts "I am positive" if 24
# puts "I am negative" unless nil
# puts "I am negative" unless false

a =["Matz", "Guido", "Dojo", "Choi", "John"]
b =[5,6,9,3,1,2,4,7,8,10]
c = ["Dojo", 9]
x = (a+b)-c
# a = %s{Matz Guido Dojo Choi John}
# puts x.to_s
# puts a.class
# puts a.shuffle
# puts a.shuffle.join(', ')
# a.delete("Choi")
# puts a

# puts "Length of a is #{a.length}"


# puts a.fetch(1)
# puts a.at(1)

puts b
puts b.delete(10)
puts b
