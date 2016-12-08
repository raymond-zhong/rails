# puts a = (1..255).to_a
#
# i = 1; while i < 256; puts i; i+=2; end
#
# i = 0; sum = 0; while i < 256; puts "New number: #{i} " "Sum: #{sum=i+sum}"; i+=1; end
#
# x = [1,3,5,7,9,13].each{|i| puts i}
#
# m = [0, -3, -5, -7, 500]; puts m.max;
#
# sum = 0; a = [2, 10, 3].each{|i| sum+= i}; puts sum/a.count;
#
# ary =[]; i = 1; while i < 256; ary.push(i); i+=2; end; print ary;
#
# y = 3; puts array = [1, 3, 5, 7].find_all{|i| i > y}.count
#
# print x = [1, 5, 10, -2].collect{|i| i*i}
#
# x = [1, 5, 10, -2].each{|x| x >0 ? (puts x): (puts 0)}
#
# sum = 0; m = [1, 5, 10, -2].each{|i| sum+= i}; print "Max = #{m.max}, Min = #{m.min}, Avg = #{sum/m.count}"
#
# x = [1, 5, 10, 7, -2]; x.shift; x.push(0); print x;
#
# b = []; x =[-1, -3, 2].each{|x| x < 0? b.push("Dojo") : b.push(x)};print b;

 sum = 0; x= [3,5,1,2,7,9,8,13,25,32].each{|i| sum+= i}; puts sum; print x.find_all{|i| i > 10};
