file_path = 'data/sum_n.txt'

f = File.new(file_path, 'r:UTF-8')
lines = f.read.to_i
nums = if lines.negative?
         lines * -1
       else
         lines
       end
i = 0
s = 0
while i < nums
  i += 1
  s += i
end
s *= -1 if lines.negative?
file_out = File.new('./sum_n.txt', 'a:UTF-8')
file_out.print(s)
