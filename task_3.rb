file_path = 'data/input_3.txt'

data = File.new(file_path, 'r:UTF-8')
original_str = data.read.gsub(/\s+/, '')

if original_str.end_with?('5') && original_str.to_i.positive?
  final_number = if original_str.length > 1
                   original_number = original_str[0..-2].to_i
                   (original_number * (original_number + 1)).to_s + 25.to_s
                 else
                   original_str.to_i * 5
                 end
else
  puts('Incorrect source data')
  end

puts(final_number)


#file_out = File.new("./file.txt", "a:UTF-8")
#file_out.print(sum_num)