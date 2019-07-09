#write your code here
def echo string
    string
end

def shout string
    string.upcase
end

def repeat (string, times = 2) 
    return_string = "#{string} " * times
    return_string[0..-2]
end

def start_of_word (string, length) 
    string[0..(length - 1)]
end

def first_word string
    return_string = string.split(" ")
    return_string[0]
end

def titleize string
    word_array = string.split(" ")
    # words that aren't going to be titleized
    small_words = ["and", "over", "the"]
    # does not titleize first word if it's a small word! 
    capitalized = word_array.map{|word| 
        if small_words.include?(word) 
            word
        else 
            word.capitalize
        end 
    }
    # this fixes titleization for small words at start of string
    capitalized[0].capitalize!
    capitalized.join("  ")
end
