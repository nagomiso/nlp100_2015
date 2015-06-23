#! env ruby

def get_offset(file_path, row_num)
  offset = 0
  File.open(file_path) do |file|
    lr_counter = 0
    until lr_counter > row_num.to_i
      offset -= 1
      break if offset < -file.size
      file.seek(offset, IO::SEEK_END)
      char = file.read(1)
      lr_counter += 1 if (char != "\n" && offset == -1) || char == "\n"
    end
  end
  offset + 1
end

def print_head(file_path, row_num = 5)
  offset = get_offset(file_path, row_num)
  File.open(file_path) do |file|
    file.seek(offset, IO::SEEK_END)
    file.each_line do |line|
      print line
    end
  end
end

file_path = ARGV[0]
row_num = ARGV[1].to_i

print_head(file_path, row_num)
