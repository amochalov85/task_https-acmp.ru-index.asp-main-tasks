file_path = "data/nums.txt"

f = File.new(file_path, "r:UTF-8")
lines = f.read.split
sum = lines.map {|j| j.to_i}
sum_num = sum.inject(0){|sum,x| sum + x }
puts sum_num
file_out = File.new("./file.txt", "a:UTF-8")
file_out.print(sum_num)