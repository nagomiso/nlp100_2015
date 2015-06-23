#! env ruby
require 'set'
def get_char_bi_gram_set(sequence)
  return nil unless sequence.is_a?(String)
  connected_sequence = sequence.gsub(/(,|\.|\s+)/, '')
  bi_gram = Set.new
  (0..connected_sequence.length - 2).each do |num|
    bi_gram.add(connected_sequence.slice(num, 2))
  end
  bi_gram
end

X = get_char_bi_gram_set('paraparaparadise')
Y = get_char_bi_gram_set('paragraph')
p X
p Y

p X.union(Y)
p X.intersection(Y)
p X.difference(Y)
p Y.difference(X)
p X.include?('se')
p Y.include?('se')
