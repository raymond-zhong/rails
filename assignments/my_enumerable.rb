module MyEnumerable
  def my_each
    i = 0;
    while i < self.length-1
      puts self[i]
      i +=1;
    end
  end
end
class Array
   include MyEnumerable
end
[1,2,3,4].my_each { |i| puts i } #prints 1 2 3 4 in the terminal
