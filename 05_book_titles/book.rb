class Book
    attr_reader :title


    def title=(new_title)
        title_words = new_title.split

        title_words.map do |word|
            if (word == title_words.first)
                word.capitalize!
            elsif (word != "and" && word != "the" && word != "of" && word != "a" && word != "an" && word != "in")
                word.capitalize!
            end
        end
        @title = title_words.join(" ")
    end

end
