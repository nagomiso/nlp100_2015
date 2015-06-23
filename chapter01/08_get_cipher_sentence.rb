#! env ruby

def cipher(char)
  return nil unless char.is_a?(String)
  return (219 - char.ord).chr if char.length == 1 && char =~ /[a-z]/
  char
end

def get_cipher_sentence(sentence)
  return nil unless sentence.is_a?(String)
  cipher_sentence = ''
  sentence.each_char do |char|
    cipher_sentence << cipher(char)
  end
  cipher_sentence
end

p get_cipher_sentence('Hello world 2015!!')
