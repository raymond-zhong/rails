a = {:first_name => "Raymond", :last_name => "Zhong"}

a.delete(:first_name)
print a
puts a.empty?
puts a.has_key?(:last_name)
puts a.has_value?("Raymond")
puts a.has_value?("Zhong")
