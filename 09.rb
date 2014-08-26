def pythagorean(sum)
    i = 1
    while i < sum 
        j = i + 1
        while j < sum - i 
            return [i,j,(sum-i-j)] if (i**2 + j**2) == (sum-i-j)**2
            j += 1
        end
        i += 1
    end
end
p pythagorean(1000).reduce(1, :*)