#! env ruby

def get_word_bi_gram(sequence)
  return nil unless sequence.is_a?(String)
  bi_gram = []
  array_sequence = sequence.gsub(/(,|\.)/, ' ').split(/\s+/)
  (0..array_sequence.length - 2).each do |num|
    bi_gram.push(array_sequence[num] + array_sequence[num + 1])
  end
  bi_gram
end

def get_char_bi_gram(sequence)
  return nil unless sequence.is_a?(String)
  connected_sequence = sequence.gsub(/(,|\.|\s+)/, '')
  bi_gram = []
  (0..connected_sequence.length - 2).each do |num|
    bi_gram.push(connected_sequence.slice(num, 2))
  end
  bi_gram
end

p get_char_bi_gram('I am NLPer')
p get_word_bi_gram('I am NLPer')
