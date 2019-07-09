def translate(string)
    split_string = string.split(" ")
    translated_string = split_string.map{|word| pig_word(word)}
    translated_string.join(" ")
end
def pig_word(word)
    vowels = ["a", "e", "i", "o", "u"]
    split_word = word.split("")
    # check for vowels at the first three letters
    if vowels.include?(split_word[0])
        split_word << "ay"
    else 
        if vowels.include?(split_word[1])
            # check for "qu" phoneme
            if split_word[0] == "q" && split_word[1] == "u"
                2.times do
                    split_word.insert(-1,split_word.delete_at(0))
                end
            else 
                split_word.insert(-1,split_word.delete_at(0))
            end
            split_word << "ay"
        elsif vowels.include?(split_word[2])
            # check for "qu" phoneme even if it's preceded a consonant
            if split_word[1] == "q" && split_word[2] == "u"
                3.times do
                    split_word.insert(-1,split_word.delete_at(0))
                end
            else 2.times do
                    split_word.insert(-1,split_word.delete_at(0))
                end
            end
            split_word << "ay"
        else 3.times do
                split_word.insert(-1,split_word.delete_at(0))
            end
            split_word << "ay"
        end
    end
    return split_word.join
end
#
