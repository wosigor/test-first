class Book

  attr_accessor :title

def title=(string)
  if string.split.size == 1
    @title = string.capitalize
  else
    words_not_to_capitalize = ["a", "an", "the","and","if","or","of","over", "in"]
    s = string.split.each{ |str| str.capitalize! unless words_not_to_capitalize.include?(str.downcase) }
    @title = s[0].capitalize + " " + s[1..-1].join(" ")
  end
end

end
