#! env ruby

def generate_sentence(x = '', y = '', z = '')
  sentence = ''
  sentence << x.to_s << 'の時の' << y.to_s << 'は' << z.to_s
end

p generate_sentence(12, '気温', 22.4)
