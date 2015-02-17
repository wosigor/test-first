def translate(str)
  words = str.split(' ')
  words.collect! { |word| translate_word(word) }
  words.join(' ')
end

def translate_word(str)
  vowels = %w{a e i o u}
  i = 0

  until vowels.include?(str[i])
    i += 1
  end

  if i == 0
    result = str
  elsif str[i-1] == 'q' && str[i] == 'u'
    result = str[i+1...str.length] + str[0...i+1]
  else
    result = str[i...str.length] + str[0...i]
  end

  return result + "ay"
end