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
file_out = File.new('./file_5.txt', 'a:UTF-8')
file_out.print(a.join(', '))
file_out.print("\n#{b.join(', ')}")
file_out.print("\n#{a.count >= b.count}")
