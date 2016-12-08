a =["Matz", "Guido", "Dojo", "Choi", "John"]
b =[5,6,9,3,1,2,4,7,8,10]

puts a.fetch(1)
puts a.at(1)

puts b
puts b.delete(10)
puts b

puts a.reverse

puts a.length

puts a.sort

puts a.slice(3)

puts a.shuffle

puts a.join(" ")

puts a.insert(2, "Jack")

puts a.values_at(1,2).join(' and ')
