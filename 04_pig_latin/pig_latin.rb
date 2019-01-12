def translate(phrase)
    phrase.split.map do |word|
        word =~ /^([^aeiouyq]*(qu)?)(.*)$/x
        puts first_part = $1
        puts second_part = $3
        "#{second_part}#{first_part}ay"
    end
.join(" ")
end
