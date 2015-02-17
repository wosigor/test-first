def echo(name)
  name
end

def shout(word)
  word.upcase
end

def repeat(word, n=2)
  [word] * n * ' '
end

def start_of_word(word, n)
  word[0, n]
end

def first_word(string)
  string.split(' ').first
end

def titleize(string)
  if string.split.size == 1
    string.capitalize
  else
    words_not_to_capitalize = ["the","and","if","or","of","over"]
    s = string.split.each{ |str| str.capitalize! unless words_not_to_capitalize.include?(str.downcase) }
    s[0].capitalize + " " + s[1..-1].join(" ")
  end
end
