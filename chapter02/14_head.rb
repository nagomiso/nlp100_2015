#! env ruby

file_path = ARGV[0]
row_num = ARGV[1]
def get_head(file_path, row_num = 5)
  file = File.open(file_path)
  file.each do |line|
    puts line.to_s
    break if file.lineno >= row_num.to_i
  end
  file.close
end

