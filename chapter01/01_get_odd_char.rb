#! env ruby

def get_odd_chars(string)
  return nil unless string.is_a?(String)
  string_array = string.split('')
  odd_char = ''
  (0..string_array.length - 1).each do |num|
    odd_char << string_array[num] if (num + 1).odd?
  end
  odd_char
end

str = STDIN.gets.chomp
puts get_odd_chars(str)
