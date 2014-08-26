def prime(nth)
    prime_arr = []
    i = 2
    while prime_arr.length < nth do 
        (prime_arr << i) if prime?(i, prime_arr)
        i == 2 ? i += 1 : i += 2
    end
    return prime_arr.last
end

def prime?(num, prime_arr)
    prime_arr.all? { |div| num%div != 0 }
end

puts prime(10001)
