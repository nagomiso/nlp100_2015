#! env ruby

def merge_column(input_file_path1 = nil, input_file_path2 = nil)
  input_file1 = File.open(input_file_path1)
  input_file2 = File.open(input_file_path2)
  return nil if input_file1.nil? || input_file2.nil?
  until input_file1.eof? && input_file2.eof?
    puts input_file1.gets.to_s.chomp << "\t" << input_file2.gets.to_s.chomp
  end
  input_file1.close
  input_file2.close
end

merge_column(ARGV[0], ARGV[1])
