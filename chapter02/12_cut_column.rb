#! env ruby

def cut_column(input_file_path = nil, output_column_num = 1)
  if !input_file_path.nil?
    File.foreach(input_file_path) do |line|
      puts line.chomp.split("\t")[output_column_num.to_i - 1]
    end
  else
    STDIN.each do |line|
      puts line.chomp.split("\t")[output_column_num.to_i - 1]
    end
  end
end

cut_column(ARGV[0], ARGV[1])
