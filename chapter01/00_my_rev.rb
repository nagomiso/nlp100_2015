#! env ruby

def get_reverse(string)
  return nil unless string.is_a?(String)
  string_array = string.split('')
  reverse_string = ''
  string_array.reverse_each { |char| reverse_string << char }
  reverse_string
end

str = STDIN.gets
puts get_reverse(str.chomp!)
