def echo(phrase)
    phrase
end

def shout(phrase)
    phrase.upcase
end

def repeat(phrase, number_of_times=2)
    ([phrase] * number_of_times).join(" ")
end

def start_of_word(phrase, number_of_letters)
    phrase.slice(0, number_of_letters)
    # official solution phrase[0...number_of_letters]
end

def first_word(phrase)
    phrase.split(" ").first
end

def titleize(phrase)
    words = phrase.split.map do |word|
    if ["the","and","to","a", "over"].include?(word)
        word
    else
        word.capitalize
    end
end
    words.first.capitalize!
    words.join(" ")
end