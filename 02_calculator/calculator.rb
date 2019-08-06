#write your code here

def add num1, num2
    sum = num1 + num2
end

def subtract num1, num2
    dif = num1 - num2
end

def sum arr
    total = 0
    arr.each do |num|
        total += num
    end
    total
end

def multiply *nums
    total = 1
    nums.each do |num|
        total *= num
    end
    total
end

def power num1, num2
    total = 1
    num2.times do
        total *= num1
    end
    total
end

def factorial num
    total = 1
    (num + 1).times do |i|
        if i != 0
            total *= i
        end
    end
    total
end