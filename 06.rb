def sum_square(num)
    return (1..num).inject(0) { |sum, value| sum + value**2 }
end

def square_sum(num)
    return ((1..num).reduce(0,:+))**2
end

puts square_sum(100) - sum_square(100) 
