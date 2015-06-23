#! env ruby

def get_shuffled_term(term)
  return nil unless term.is_a?(String)
  return term if term.length <= 4

  array_term = term.split(/\s*/)
  shuffled_term = ''

  # get the first and last character
  first = array_term.shift
  last = array_term.pop

  # combine the character
  shuffled_term << first
  array_term.shuffle(random: Random.new(445)).each do |char|
    shuffled_term << char
  end
  shuffled_term << last
  shuffled_term
end

def typoglycemia(sentence)
  return nil unless sentence.is_a?(String)
  typoglycemia_array = []
  sentence.split(/\s+/).each do |term|
    typoglycemia_array.push(get_shuffled_term(term))
  end
  typoglycemia_array.join(' ')
end

p typoglycemia("I couldn't believe that I could actually understand what I was reading : the phenomenal power of the human mind .")
