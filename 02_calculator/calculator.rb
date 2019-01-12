def add (a,b)
    a + b
end

def subtract (a,b)
    a - b
end

def multiply (array)
    total = 1
    array.each {|num| total = total * num}
    total
end

def divide (a,b)
    a / b
end

def sum (array)
    total = 0
    array.each {|num| total = total + num}
    total
end

def power (a,b)
    a ** b
end

def factorial(a)
    if (a == 0 || a == 1)
        total = 1
    else 
        total = 1
        while a > 1
        total = total * a
        a -= 1
        end
    end
    total
end