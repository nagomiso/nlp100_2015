#! env ruby

def get_elements_name(sentence)
  return nil unless sentence.is_a?(String)
  word_number = 1
  word_hash = {}
  number_list = [1, 5, 6, 7, 8, 9, 15, 16, 19]
  sentence.gsub(/(,|\.)/, '').split(' ').each do |word|
    if number_list.include?(word_number)
      word_hash[word_number] = word.slice(0, 1)
    else
      word_hash[word_number] = word.slice(0, 2)
    end
    word_number += 1
  end
  word_hash
end

p get_elements_name('Hi He Lied Because Boron Could Not Oxidize Fluorine. New Nations Might Also Sign Peace Security Clause. Arthur King Can.')
