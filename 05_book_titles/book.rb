class Book
    attr_reader :title

    def title=(string)
    words = string.split(" ")
    words = [words[0].capitalize] + 
        words[1..-1].map do |word| 
            small_words = ["a", "an", "and", "in", "the", "of"]
            if small_words.include? word
                word
            else 
                word.capitalize
            end
        end
    @title = words.join(" ")
    end
end

