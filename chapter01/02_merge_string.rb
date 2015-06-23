#! env ruby

def get_max_length(string1, string2)
  if string1.length >= string2.length
    max_length = string1.length
  else
    max_length = string2.length
  end
  max_length
end

def merge_string(string1, string2)
  return nil unless string1.is_a?(String) && string2.is_a?(String)
  string1_array = string1.split('')
  string2_array = string2.split('')
  merged_string = ''
  (0..get_max_length(string1, string2) - 1).each do |num|
    merged_string << string1_array[num] if num < string1_array.length
    merged_string << string2_array[num] if num < string2_array.length
  end
  merged_string
end

puts merge_string(ARGV[0], ARGV[1]) if ARGV.length == 2
