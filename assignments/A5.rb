# sum = 0; x= [3,5,1,2,7,9,8,13,25,32].each{|i| sum+= i}; puts sum; print x.find_all{|i| i > 10};
#
# puts x= ["John", "KB", "Oliver", "Cory", "Matthew", "Christopher"].shuffle; x.each{|x| x.length > 5 ? (puts x):(puts)}
#
# print a = ("a".."z").to_a; print a.shuffle.last; if a.shuffle.first.start_with?("a", "e", "i", "o", "u"); (puts "it is starting with avowel"); else (puts a.shuffle.first); end
#
# a = (55..100).to_a; print arr = a.sample(10); print arr.sort; print " Min = #{arr.min}, Max = #{arr.max}"

# str1 =""; 5.times {str1+=(65+rand(26)).chr;}; print str1;
def str; (65+rand(26)).chr; end; def str1; str+str+str+str+str; end;print str1;
#
# arr = []; i = 0; while i < 10; arr.push(str1); i+=1; end;print arr;
# or
arr1 = []; 10.times {arr1.push(str1)}; print arr1;
