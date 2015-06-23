#! env ruby

def get_sorted_list(sentence)
  return nil unless sentence.is_a?(String)
  word_size_list = []
  sentence.gsub(/(,|\.)/, '').split(' ').each do |word|
    word_size_list.push(word.length)
  end
  word_size_list
end

p get_sorted_list('Now I need a drink, alcoholic of course, after the heavy lectures involving quantum mechanics.')
