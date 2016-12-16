def test
  yield 5
  puts "You are in the method test"
  yield 1000
end
test {|i| puts "You are in the block #{i}"}
