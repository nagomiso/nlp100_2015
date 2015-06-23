#! env ruby

def count_line(file_path = nil)
  line_number = 0
  if !file_path.nil?
    File.foreach(file_path) do
      line_number += 1
    end
  else
    STDIN.each do
      line_number += 1
    end
  end
  line_number
end

p count_line(ARGV[0])
