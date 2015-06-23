#! env ruby

def replace_tab_with_space(file_path = nil)
  if !file_path.nil?
    File.foreach(file_path) do |line|
      puts line.gsub(/\t/, ' ')
    end
  else
    STDIN.each do |line|
      puts line.gsub(/\t/, ' ')
    end
  end
end

replace_tab_with_space(ARGV[0])
