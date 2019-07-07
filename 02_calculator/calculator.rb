#write your code here
def add (a, b)
    a + b 
end

def subtract (a, b)
    a - b
end

def sum a
    if a.empty?  
    return 0
    else 
        a.reduce {|sum, n| sum += n}
    end
end

def multiply (a, b)
    a * b
end

def factorial a
    if a == 0
        1
    elsif a == 1
        1
    else
        number = 1
        while a > 0
            number = number * a 
            a -= 1
        end
        return number
    end
end