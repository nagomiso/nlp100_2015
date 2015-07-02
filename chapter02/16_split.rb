#! env ruby

def write_lines(output_file_path, output_lines)
  File.open(output_file_path, 'w') do |output_file|
    output_lines.each do |line|
      output_file.print(line)
    end
  end
end

def split(input_file_path, output_prefix, column_num)
  File.open(input_file_path, 'r') do |input_file|
    file_num = 0
    output_lines = []
    input_file.each do |line|
      output_lines.push(line)
      if output_lines.length % column_num == 0
        write_lines(output_prefix + format('%03d', file_num), output_lines)
        file_num += 1
        output_lines.clear
      else
        next
      end
    end
  end
end

input_file_path = ARGV[0]
output_file_path = ARGV[1]
column_num = ARGV[2].to_i

split(input_file_path, output_file_path, column_num)
