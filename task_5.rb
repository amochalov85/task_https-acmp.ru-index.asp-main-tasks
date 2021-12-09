file_path = 'data/input_5.txt'
a = []
b = []
line = (IO.readlines(file_path)[1]).split.map(&:to_i).to_a
line.map do |i|
  if (i % 2).zero?
    a << i
  else
    b << i
  end
end
c = a.count > b.count
file_out = File.new('./file_5.txt', 'a:UTF-8')
file_out.print(a.to_s)
file_out.print("\n#{b.to_s}")
file_out.print("\n#{c.to_s}")
