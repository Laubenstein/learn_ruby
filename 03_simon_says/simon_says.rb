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
    return_string = string.split(" ").map{|word| word.capitalize}.join(" ")
end
